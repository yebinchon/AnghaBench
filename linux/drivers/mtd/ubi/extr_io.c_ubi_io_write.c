
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_count; int peb_size; int hdrs_min_io_size; int leb_start; int mtd; scalar_t__ ro_mode; } ;
typedef int loff_t ;


 int EIO ;
 int EROFS ;
 int dbg_io (char*,int,int,int) ;
 int dump_stack () ;
 int mtd_write (int ,int,int,size_t*,void const*) ;
 int self_check_not_bad (struct ubi_device*,int) ;
 int self_check_peb_ec_hdr (struct ubi_device*,int) ;
 int self_check_peb_vid_hdr (struct ubi_device*,int) ;
 int self_check_write (struct ubi_device*,void const*,int,int,int) ;
 int ubi_assert (int) ;
 scalar_t__ ubi_dbg_is_write_failure (struct ubi_device*) ;
 int ubi_dump_flash (struct ubi_device*,int,int,int) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_self_check_all_ff (struct ubi_device*,int,int,int) ;

int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
   int len)
{
 int err;
 size_t written;
 loff_t addr;

 dbg_io("write %d bytes to PEB %d:%d", len, pnum, offset);

 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
 ubi_assert(offset >= 0 && offset + len <= ubi->peb_size);
 ubi_assert(offset % ubi->hdrs_min_io_size == 0);
 ubi_assert(len > 0 && len % ubi->hdrs_min_io_size == 0);

 if (ubi->ro_mode) {
  ubi_err(ubi, "read-only mode");
  return -EROFS;
 }

 err = self_check_not_bad(ubi, pnum);
 if (err)
  return err;


 err = ubi_self_check_all_ff(ubi, pnum, offset, len);
 if (err)
  return err;

 if (offset >= ubi->leb_start) {




  err = self_check_peb_ec_hdr(ubi, pnum);
  if (err)
   return err;
  err = self_check_peb_vid_hdr(ubi, pnum);
  if (err)
   return err;
 }

 if (ubi_dbg_is_write_failure(ubi)) {
  ubi_err(ubi, "cannot write %d bytes to PEB %d:%d (emulated)",
   len, pnum, offset);
  dump_stack();
  return -EIO;
 }

 addr = (loff_t)pnum * ubi->peb_size + offset;
 err = mtd_write(ubi->mtd, addr, len, &written, buf);
 if (err) {
  ubi_err(ubi, "error %d while writing %d bytes to PEB %d:%d, written %zd bytes",
   err, len, pnum, offset, written);
  dump_stack();
  ubi_dump_flash(ubi, pnum, offset, len);
 } else
  ubi_assert(written == len);

 if (!err) {
  err = self_check_write(ubi, buf, pnum, offset, len);
  if (err)
   return err;





  offset += len;
  len = ubi->peb_size - offset;
  if (len)
   err = ubi_self_check_all_ff(ubi, pnum, offset, len);
 }

 return err;
}
