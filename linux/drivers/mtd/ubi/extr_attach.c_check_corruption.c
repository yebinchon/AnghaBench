
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_hdr {int dummy; } ;
struct ubi_device {int buf_mutex; int leb_size; int peb_buf; int leb_start; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int UBI_IO_BITFLIPS ;
 int memset (int ,int,int ) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int,int ,int ) ;
 scalar_t__ ubi_check_pattern (int ,int,int ) ;
 int ubi_dbg_print_hex_dump (int ,char*,int ,int,int,int ,int ,int) ;
 int ubi_dump_vid_hdr (struct ubi_vid_hdr*) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_io_read (struct ubi_device*,int ,int,int ,int ) ;

__attribute__((used)) static int check_corruption(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
       int pnum)
{
 int err;

 mutex_lock(&ubi->buf_mutex);
 memset(ubi->peb_buf, 0x00, ubi->leb_size);

 err = ubi_io_read(ubi, ubi->peb_buf, pnum, ubi->leb_start,
     ubi->leb_size);
 if (err == UBI_IO_BITFLIPS || mtd_is_eccerr(err)) {







  err = 0;
  goto out_unlock;
 }

 if (err)
  goto out_unlock;

 if (ubi_check_pattern(ubi->peb_buf, 0xFF, ubi->leb_size))
  goto out_unlock;

 ubi_err(ubi, "PEB %d contains corrupted VID header, and the data does not contain all 0xFF",
  pnum);
 ubi_err(ubi, "this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection");
 ubi_dump_vid_hdr(vid_hdr);
 pr_err("hexdump of PEB %d offset %d, length %d",
        pnum, ubi->leb_start, ubi->leb_size);
 ubi_dbg_print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
          ubi->peb_buf, ubi->leb_size, 1);
 err = 1;

out_unlock:
 mutex_unlock(&ubi->buf_mutex);
 return err;
}
