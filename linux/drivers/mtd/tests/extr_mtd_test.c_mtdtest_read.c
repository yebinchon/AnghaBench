
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtd_read (struct mtd_info*,int ,size_t,size_t*,void*) ;
 int pr_err (char*,int ) ;

int mtdtest_read(struct mtd_info *mtd, loff_t addr, size_t size, void *buf)
{
 size_t read;
 int err;

 err = mtd_read(mtd, addr, size, &read, buf);

 if (mtd_is_bitflip(err))
  err = 0;
 if (!err && read != size)
  err = -EIO;
 if (err)
  pr_err("error: read failed at %#llx\n", addr);

 return err;
}
