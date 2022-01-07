
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int data_crc; int data_size; int copy_flag; int sqnum; } ;
struct ubi_device {int buf_mutex; int peb_buf; } ;
struct ubi_ainf_peb {unsigned long long sqnum; int pnum; int copy_flag; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UBI_CRC32_INIT ;
 int UBI_IO_BITFLIPS ;
 void* be32_to_cpu (int ) ;
 unsigned long long be64_to_cpu (int ) ;
 void* crc32 (int ,int ,int) ;
 int dbg_bld (char*,int,...) ;
 int mtd_is_eccerr (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ubi_vid_io_buf* ubi_alloc_vid_buf (struct ubi_device*,int ) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_free_vid_buf (struct ubi_vid_io_buf*) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_read_data (struct ubi_device*,int ,int,int ,int) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*,int ) ;

int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
   int pnum, const struct ubi_vid_hdr *vid_hdr)
{
 int len, err, second_is_newer, bitflips = 0, corrupted = 0;
 uint32_t data_crc, crc;
 struct ubi_vid_io_buf *vidb = ((void*)0);
 unsigned long long sqnum2 = be64_to_cpu(vid_hdr->sqnum);

 if (sqnum2 == aeb->sqnum) {
  ubi_err(ubi, "unsupported on-flash UBI format");
  return -EINVAL;
 }


 second_is_newer = (sqnum2 > aeb->sqnum);
 if (second_is_newer) {
  if (!vid_hdr->copy_flag) {

   dbg_bld("second PEB %d is newer, copy_flag is unset",
    pnum);
   return 1;
  }
 } else {
  if (!aeb->copy_flag) {

   dbg_bld("first PEB %d is newer, copy_flag is unset",
    pnum);
   return bitflips << 1;
  }

  vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
  if (!vidb)
   return -ENOMEM;

  pnum = aeb->pnum;
  err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 0);
  if (err) {
   if (err == UBI_IO_BITFLIPS)
    bitflips = 1;
   else {
    ubi_err(ubi, "VID of PEB %d header is bad, but it was OK earlier, err %d",
     pnum, err);
    if (err > 0)
     err = -EIO;

    goto out_free_vidh;
   }
  }

  vid_hdr = ubi_get_vid_hdr(vidb);
 }



 len = be32_to_cpu(vid_hdr->data_size);

 mutex_lock(&ubi->buf_mutex);
 err = ubi_io_read_data(ubi, ubi->peb_buf, pnum, 0, len);
 if (err && err != UBI_IO_BITFLIPS && !mtd_is_eccerr(err))
  goto out_unlock;

 data_crc = be32_to_cpu(vid_hdr->data_crc);
 crc = crc32(UBI_CRC32_INIT, ubi->peb_buf, len);
 if (crc != data_crc) {
  dbg_bld("PEB %d CRC error: calculated %#08x, must be %#08x",
   pnum, crc, data_crc);
  corrupted = 1;
  bitflips = 0;
  second_is_newer = !second_is_newer;
 } else {
  dbg_bld("PEB %d CRC is OK", pnum);
  bitflips |= !!err;
 }
 mutex_unlock(&ubi->buf_mutex);

 ubi_free_vid_buf(vidb);

 if (second_is_newer)
  dbg_bld("second PEB %d is newer, copy_flag is set", pnum);
 else
  dbg_bld("first PEB %d is newer, copy_flag is set", pnum);

 return second_is_newer | (bitflips << 1) | (corrupted << 2);

out_unlock:
 mutex_unlock(&ubi->buf_mutex);
out_free_vidh:
 ubi_free_vid_buf(vidb);
 return err;
}
