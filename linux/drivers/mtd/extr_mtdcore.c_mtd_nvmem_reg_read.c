
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int EIO ;
 int EUCLEAN ;
 int mtd_read (struct mtd_info*,unsigned int,size_t,size_t*,void*) ;

__attribute__((used)) static int mtd_nvmem_reg_read(void *priv, unsigned int offset,
         void *val, size_t bytes)
{
 struct mtd_info *mtd = priv;
 size_t retlen;
 int err;

 err = mtd_read(mtd, offset, bytes, &retlen, val);
 if (err && err != -EUCLEAN)
  return err;

 return retlen == bytes ? 0 : -EIO;
}
