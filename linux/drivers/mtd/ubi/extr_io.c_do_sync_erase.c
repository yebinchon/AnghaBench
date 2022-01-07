
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_count; int peb_size; int mtd; scalar_t__ ro_mode; } ;
struct erase_info {int addr; int len; } ;
typedef int loff_t ;


 int EIO ;
 int EROFS ;
 int UBI_IO_RETRIES ;
 int dbg_io (char*,int) ;
 int dump_stack () ;
 int memset (struct erase_info*,int ,int) ;
 int mtd_erase (int ,struct erase_info*) ;
 int ubi_assert (int) ;
 scalar_t__ ubi_dbg_is_erase_failure (struct ubi_device*) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_self_check_all_ff (struct ubi_device*,int,int ,int) ;
 int ubi_warn (struct ubi_device*,char*,int,int) ;
 int yield () ;

__attribute__((used)) static int do_sync_erase(struct ubi_device *ubi, int pnum)
{
 int err, retries = 0;
 struct erase_info ei;

 dbg_io("erase PEB %d", pnum);
 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 if (ubi->ro_mode) {
  ubi_err(ubi, "read-only mode");
  return -EROFS;
 }

retry:
 memset(&ei, 0, sizeof(struct erase_info));

 ei.addr = (loff_t)pnum * ubi->peb_size;
 ei.len = ubi->peb_size;

 err = mtd_erase(ubi->mtd, &ei);
 if (err) {
  if (retries++ < UBI_IO_RETRIES) {
   ubi_warn(ubi, "error %d while erasing PEB %d, retry",
     err, pnum);
   yield();
   goto retry;
  }
  ubi_err(ubi, "cannot erase PEB %d, error %d", pnum, err);
  dump_stack();
  return err;
 }

 err = ubi_self_check_all_ff(ubi, pnum, 0, ubi->peb_size);
 if (err)
  return err;

 if (ubi_dbg_is_erase_failure(ubi)) {
  ubi_err(ubi, "cannot erase PEB %d (emulated)", pnum);
  return -EIO;
 }

 return 0;
}
