
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_size; int mtd; } ;
typedef int loff_t ;


 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int GFP_NOFS ;
 int KERN_DEBUG ;
 int PAGE_KERNEL ;
 void* __vmalloc (int,int ,int ) ;
 int dump_stack () ;
 int mtd_is_bitflip (int) ;
 int mtd_read (int ,int,int,size_t*,void*) ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;
 int ubi_check_pattern (void*,int,int) ;
 int ubi_dbg_chk_io (struct ubi_device*) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_msg (struct ubi_device*,char*,int,int) ;
 int vfree (void*) ;

int ubi_self_check_all_ff(struct ubi_device *ubi, int pnum, int offset, int len)
{
 size_t read;
 int err;
 void *buf;
 loff_t addr = (loff_t)pnum * ubi->peb_size + offset;

 if (!ubi_dbg_chk_io(ubi))
  return 0;

 buf = __vmalloc(len, GFP_NOFS, PAGE_KERNEL);
 if (!buf) {
  ubi_err(ubi, "cannot allocate memory to check for 0xFFs");
  return 0;
 }

 err = mtd_read(ubi->mtd, addr, len, &read, buf);
 if (err && !mtd_is_bitflip(err)) {
  ubi_err(ubi, "err %d while reading %d bytes from PEB %d:%d, read %zd bytes",
   err, len, pnum, offset, read);
  goto error;
 }

 err = ubi_check_pattern(buf, 0xFF, len);
 if (err == 0) {
  ubi_err(ubi, "flash region at PEB %d:%d, length %d does not contain all 0xFF bytes",
   pnum, offset, len);
  goto fail;
 }

 vfree(buf);
 return 0;

fail:
 ubi_err(ubi, "self-check failed for PEB %d", pnum);
 ubi_msg(ubi, "hex dump of the %d-%d region", offset, offset + len);
 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
 err = -EINVAL;
error:
 dump_stack();
 vfree(buf);
 return err;
}
