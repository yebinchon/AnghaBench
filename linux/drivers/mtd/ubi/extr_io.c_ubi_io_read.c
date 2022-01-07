
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubi_device {int peb_count; int peb_size; int mtd; } ;
typedef int loff_t ;


 int EIO ;
 int UBI_IO_BITFLIPS ;
 int UBI_IO_RETRIES ;
 int dbg_gen (char*) ;
 int dbg_io (char*,int,int,int) ;
 int dump_stack () ;
 scalar_t__ mtd_is_bitflip (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mtd_read (int ,int,int,size_t*,void*) ;
 int self_check_not_bad (struct ubi_device const*,int) ;
 int ubi_assert (int) ;
 scalar_t__ ubi_dbg_is_bitflip (struct ubi_device const*) ;
 int ubi_err (struct ubi_device const*,char*,int,char const*,int,int,int,size_t) ;
 int ubi_msg (struct ubi_device const*,char*,int) ;
 int ubi_warn (struct ubi_device const*,char*,int,char const*,int,int,int,size_t) ;
 int yield () ;

int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
  int len)
{
 int err, retries = 0;
 size_t read;
 loff_t addr;

 dbg_io("read %d bytes from PEB %d:%d", len, pnum, offset);

 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
 ubi_assert(offset >= 0 && offset + len <= ubi->peb_size);
 ubi_assert(len > 0);

 err = self_check_not_bad(ubi, pnum);
 if (err)
  return err;
 *((uint8_t *)buf) ^= 0xFF;

 addr = (loff_t)pnum * ubi->peb_size + offset;
retry:
 err = mtd_read(ubi->mtd, addr, len, &read, buf);
 if (err) {
  const char *errstr = mtd_is_eccerr(err) ? " (ECC error)" : "";

  if (mtd_is_bitflip(err)) {
   ubi_msg(ubi, "fixable bit-flip detected at PEB %d",
    pnum);
   ubi_assert(len == read);
   return UBI_IO_BITFLIPS;
  }

  if (retries++ < UBI_IO_RETRIES) {
   ubi_warn(ubi, "error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry",
     err, errstr, len, pnum, offset, read);
   yield();
   goto retry;
  }

  ubi_err(ubi, "error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes",
   err, errstr, len, pnum, offset, read);
  dump_stack();






  if (read != len && mtd_is_eccerr(err)) {
   ubi_assert(0);
   err = -EIO;
  }
 } else {
  ubi_assert(len == read);

  if (ubi_dbg_is_bitflip(ubi)) {
   dbg_gen("bit-flip (emulated)");
   err = UBI_IO_BITFLIPS;
  }
 }

 return err;
}
