
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_oob_ops {size_t len; size_t retlen; int * datbuf; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int mtd_read_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;

int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
      u_char *buf)
{
 struct mtd_oob_ops ops = {
  .len = len,
  .datbuf = buf,
 };
 int ret;

 ret = mtd_read_oob(mtd, from, &ops);
 *retlen = ops.retlen;

 return ret;
}
