
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ubi_volume {int vol_id; int data_pad; TYPE_2__* eba_tbl; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {void* sqnum; void* data_crc; void* used_ebs; void* data_size; int vol_type; void* data_pad; int compat; void* lnum; void* vol_id; } ;
struct ubi_device {int bad_allowed; int min_io_size; scalar_t__ ro_mode; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ pnum; } ;


 int ALIGN (int,int ) ;
 int EIO ;
 int ENOMEM ;
 int EROFS ;
 int GFP_NOFS ;
 int UBI_CRC32_INIT ;
 int UBI_IO_RETRIES ;
 int UBI_VID_STATIC ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int crc32 (int ,void const*,int) ;
 int leb_write_lock (struct ubi_device*,int,int) ;
 int leb_write_unlock (struct ubi_device*,int,int) ;
 int try_write_vid_and_data (struct ubi_volume*,int,struct ubi_vid_io_buf*,void const*,int ,int) ;
 struct ubi_vid_io_buf* ubi_alloc_vid_buf (struct ubi_device*,int ) ;
 int ubi_assert (int) ;
 int ubi_free_vid_buf (struct ubi_vid_io_buf*) ;
 int ubi_get_compat (struct ubi_device*,int) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_msg (struct ubi_device*,char*) ;
 int ubi_next_sqnum (struct ubi_device*) ;
 int ubi_ro_mode (struct ubi_device*) ;

int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
    int lnum, const void *buf, int len, int used_ebs)
{
 int err, tries, data_size = len, vol_id = vol->vol_id;
 struct ubi_vid_io_buf *vidb;
 struct ubi_vid_hdr *vid_hdr;
 uint32_t crc;

 if (ubi->ro_mode)
  return -EROFS;

 if (lnum == used_ebs - 1)

  len = ALIGN(data_size, ubi->min_io_size);
 else
  ubi_assert(!(len & (ubi->min_io_size - 1)));

 vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
 if (!vidb)
  return -ENOMEM;

 vid_hdr = ubi_get_vid_hdr(vidb);

 err = leb_write_lock(ubi, vol_id, lnum);
 if (err)
  goto out;

 vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 vid_hdr->vol_id = cpu_to_be32(vol_id);
 vid_hdr->lnum = cpu_to_be32(lnum);
 vid_hdr->compat = ubi_get_compat(ubi, vol_id);
 vid_hdr->data_pad = cpu_to_be32(vol->data_pad);

 crc = crc32(UBI_CRC32_INIT, buf, data_size);
 vid_hdr->vol_type = UBI_VID_STATIC;
 vid_hdr->data_size = cpu_to_be32(data_size);
 vid_hdr->used_ebs = cpu_to_be32(used_ebs);
 vid_hdr->data_crc = cpu_to_be32(crc);

 ubi_assert(vol->eba_tbl->entries[lnum].pnum < 0);

 for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
  err = try_write_vid_and_data(vol, lnum, vidb, buf, 0, len);
  if (err != -EIO || !ubi->bad_allowed)
   break;

  vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
  ubi_msg(ubi, "try another PEB");
 }

 if (err)
  ubi_ro_mode(ubi);

 leb_write_unlock(ubi, vol_id, lnum);

out:
 ubi_free_vid_buf(vidb);

 return err;
}
