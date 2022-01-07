
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ubi_volume {TYPE_2__* eba_tbl; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {scalar_t__ vol_type; int copy_flag; int sqnum; void* data_crc; void* data_size; void* data_pad; void* lnum; void* vol_id; } ;
struct ubi_device {int leb_size; int buf_mutex; int peb_buf; int volumes_lock; struct ubi_volume** volumes; int min_io_size; int fm_eba_sem; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;


 int ALIGN (int,int ) ;
 int EIO ;
 int MOVE_CANCEL_RACE ;
 int MOVE_RETRY ;
 int MOVE_SOURCE_RD_ERR ;
 int MOVE_TARGET_BITFLIPS ;
 int MOVE_TARGET_RD_ERR ;
 int MOVE_TARGET_WR_ERR ;
 int UBI_CRC32_INIT ;
 int UBI_IO_BITFLIPS ;
 scalar_t__ UBI_VID_DYNAMIC ;
 scalar_t__ UBI_VID_STATIC ;
 int be32_to_cpu (void*) ;
 int cond_resched () ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int crc32 (int ,int ,int) ;
 int dbg_wl (char*,int,...) ;
 scalar_t__ is_error_sane (int) ;
 int leb_write_trylock (struct ubi_device*,int,int) ;
 int leb_write_unlock (struct ubi_device*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rwsem_is_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int ubi_calc_data_len (struct ubi_device*,int ,int) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_read_data (struct ubi_device*,int ,int,int ,int) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*,int) ;
 int ubi_io_write_data (struct ubi_device*,int ,int,int ,int) ;
 int ubi_io_write_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*) ;
 int ubi_next_sqnum (struct ubi_device*) ;
 int ubi_warn (struct ubi_device*,char*,int,int) ;
 int vol_id2idx (struct ubi_device*,int) ;

int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
       struct ubi_vid_io_buf *vidb)
{
 int err, vol_id, lnum, data_size, aldata_size, idx;
 struct ubi_vid_hdr *vid_hdr = ubi_get_vid_hdr(vidb);
 struct ubi_volume *vol;
 uint32_t crc;

 ubi_assert(rwsem_is_locked(&ubi->fm_eba_sem));

 vol_id = be32_to_cpu(vid_hdr->vol_id);
 lnum = be32_to_cpu(vid_hdr->lnum);

 dbg_wl("copy LEB %d:%d, PEB %d to PEB %d", vol_id, lnum, from, to);

 if (vid_hdr->vol_type == UBI_VID_STATIC) {
  data_size = be32_to_cpu(vid_hdr->data_size);
  aldata_size = ALIGN(data_size, ubi->min_io_size);
 } else
  data_size = aldata_size =
       ubi->leb_size - be32_to_cpu(vid_hdr->data_pad);

 idx = vol_id2idx(ubi, vol_id);
 spin_lock(&ubi->volumes_lock);






 vol = ubi->volumes[idx];
 spin_unlock(&ubi->volumes_lock);
 if (!vol) {

  dbg_wl("volume %d is being removed, cancel", vol_id);
  return MOVE_CANCEL_RACE;
 }
 err = leb_write_trylock(ubi, vol_id, lnum);
 if (err) {
  dbg_wl("contention on LEB %d:%d, cancel", vol_id, lnum);
  return MOVE_RETRY;
 }






 if (vol->eba_tbl->entries[lnum].pnum != from) {
  dbg_wl("LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel",
         vol_id, lnum, from, vol->eba_tbl->entries[lnum].pnum);
  err = MOVE_CANCEL_RACE;
  goto out_unlock_leb;
 }







 mutex_lock(&ubi->buf_mutex);
 dbg_wl("read %d bytes of data", aldata_size);
 err = ubi_io_read_data(ubi, ubi->peb_buf, from, 0, aldata_size);
 if (err && err != UBI_IO_BITFLIPS) {
  ubi_warn(ubi, "error %d while reading data from PEB %d",
    err, from);
  err = MOVE_SOURCE_RD_ERR;
  goto out_unlock_buf;
 }
 if (vid_hdr->vol_type == UBI_VID_DYNAMIC)
  aldata_size = data_size =
   ubi_calc_data_len(ubi, ubi->peb_buf, data_size);

 cond_resched();
 crc = crc32(UBI_CRC32_INIT, ubi->peb_buf, data_size);
 cond_resched();







 if (data_size > 0) {
  vid_hdr->copy_flag = 1;
  vid_hdr->data_size = cpu_to_be32(data_size);
  vid_hdr->data_crc = cpu_to_be32(crc);
 }
 vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));

 err = ubi_io_write_vid_hdr(ubi, to, vidb);
 if (err) {
  if (err == -EIO)
   err = MOVE_TARGET_WR_ERR;
  goto out_unlock_buf;
 }

 cond_resched();


 err = ubi_io_read_vid_hdr(ubi, to, vidb, 1);
 if (err) {
  if (err != UBI_IO_BITFLIPS) {
   ubi_warn(ubi, "error %d while reading VID header back from PEB %d",
     err, to);
   if (is_error_sane(err))
    err = MOVE_TARGET_RD_ERR;
  } else
   err = MOVE_TARGET_BITFLIPS;
  goto out_unlock_buf;
 }

 if (data_size > 0) {
  err = ubi_io_write_data(ubi, ubi->peb_buf, to, 0, aldata_size);
  if (err) {
   if (err == -EIO)
    err = MOVE_TARGET_WR_ERR;
   goto out_unlock_buf;
  }

  cond_resched();
 }

 ubi_assert(vol->eba_tbl->entries[lnum].pnum == from);
 vol->eba_tbl->entries[lnum].pnum = to;

out_unlock_buf:
 mutex_unlock(&ubi->buf_mutex);
out_unlock_leb:
 leb_write_unlock(ubi, vol_id, lnum);
 return err;
}
