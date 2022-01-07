
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
struct mtd_oob_ops {size_t len; size_t retlen; int * datbuf; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int mtd_write_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;

int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
       const u_char *buf)
{
 struct mtd_oob_ops ops = {
  .len = len,
  .datbuf = (u8 *)buf,
 };
 int ret;

 ret = mtd_write_oob(mtd, to, &ops);
 *retlen = ops.retlen;

 return ret;
}
