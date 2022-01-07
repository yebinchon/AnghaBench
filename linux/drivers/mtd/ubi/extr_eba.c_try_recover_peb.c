
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ubi_volume {int vol_id; TYPE_2__* eba_tbl; struct ubi_device* ubi; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {scalar_t__ vol_type; int copy_flag; void* data_crc; void* data_size; int sqnum; } ;
struct ubi_device {int fm_eba_sem; int buf_mutex; scalar_t__ peb_buf; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;


 int EIO ;
 int UBI_CRC32_INIT ;
 int UBI_IO_BITFLIPS ;
 scalar_t__ UBI_VID_DYNAMIC ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int crc32 (int ,scalar_t__,int) ;
 int memcpy (scalar_t__,void const*,int) ;
 int memset (scalar_t__,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubi_assert (int) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_read_data (struct ubi_device*,scalar_t__,int,int ,int) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*,int) ;
 int ubi_io_write_data (struct ubi_device*,scalar_t__,int,int ,int) ;
 int ubi_io_write_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*) ;
 int ubi_msg (struct ubi_device*,char*,...) ;
 int ubi_next_sqnum (struct ubi_device*) ;
 int ubi_warn (struct ubi_device*,char*,int) ;
 int ubi_wl_get_peb (struct ubi_device*) ;
 int ubi_wl_put_peb (struct ubi_device*,int,int,int,int) ;
 int up_read (int *) ;

__attribute__((used)) static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
      const void *buf, int offset, int len,
      struct ubi_vid_io_buf *vidb, bool *retry)
{
 struct ubi_device *ubi = vol->ubi;
 struct ubi_vid_hdr *vid_hdr;
 int new_pnum, err, vol_id = vol->vol_id, data_size;
 uint32_t crc;

 *retry = 0;

 new_pnum = ubi_wl_get_peb(ubi);
 if (new_pnum < 0) {
  err = new_pnum;
  goto out_put;
 }

 ubi_msg(ubi, "recover PEB %d, move data to PEB %d",
  pnum, new_pnum);

 err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 1);
 if (err && err != UBI_IO_BITFLIPS) {
  if (err > 0)
   err = -EIO;
  goto out_put;
 }

 vid_hdr = ubi_get_vid_hdr(vidb);
 ubi_assert(vid_hdr->vol_type == UBI_VID_DYNAMIC);

 mutex_lock(&ubi->buf_mutex);
 memset(ubi->peb_buf + offset, 0xFF, len);


 if (offset > 0) {
  err = ubi_io_read_data(ubi, ubi->peb_buf, pnum, 0, offset);
  if (err && err != UBI_IO_BITFLIPS)
   goto out_unlock;
 }

 *retry = 1;

 memcpy(ubi->peb_buf + offset, buf, len);

 data_size = offset + len;
 crc = crc32(UBI_CRC32_INIT, ubi->peb_buf, data_size);
 vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 vid_hdr->copy_flag = 1;
 vid_hdr->data_size = cpu_to_be32(data_size);
 vid_hdr->data_crc = cpu_to_be32(crc);
 err = ubi_io_write_vid_hdr(ubi, new_pnum, vidb);
 if (err)
  goto out_unlock;

 err = ubi_io_write_data(ubi, ubi->peb_buf, new_pnum, 0, data_size);

out_unlock:
 mutex_unlock(&ubi->buf_mutex);

 if (!err)
  vol->eba_tbl->entries[lnum].pnum = new_pnum;

out_put:
 up_read(&ubi->fm_eba_sem);

 if (!err) {
  ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
  ubi_msg(ubi, "data was successfully recovered");
 } else if (new_pnum >= 0) {




  ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
  ubi_warn(ubi, "failed to write to PEB %d", new_pnum);
 }

 return err;
}
