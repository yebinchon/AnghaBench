
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int mtd_write (struct mtd_info*,int ,size_t,size_t*,void const*) ;
 int pr_err (char*,int ) ;

int mtdtest_write(struct mtd_info *mtd, loff_t addr, size_t size,
  const void *buf)
{
 size_t written;
 int err;

 err = mtd_write(mtd, addr, size, &written, buf);
 if (!err && written != size)
  err = -EIO;
 if (err)
  pr_err("error: write failed at %#llx\n", addr);

 return err;
}
