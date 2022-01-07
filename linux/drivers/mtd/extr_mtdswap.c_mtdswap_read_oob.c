
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int dev; int mtd; } ;
struct mtd_oob_ops {int ooblen; int oobretlen; } ;
typedef int loff_t ;


 int EIO ;
 int dev_warn (int ,char*,int,int ,...) ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtd_read_oob (int ,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int mtdswap_read_oob(struct mtdswap_dev *d, loff_t from,
   struct mtd_oob_ops *ops)
{
 int ret = mtd_read_oob(d->mtd, from, ops);

 if (mtd_is_bitflip(ret))
  return ret;

 if (ret) {
  dev_warn(d->dev, "Read OOB failed %d for block at %08llx\n",
   ret, from);
  return ret;
 }

 if (ops->oobretlen < ops->ooblen) {
  dev_warn(d->dev, "Read OOB return short read (%zd bytes not "
   "%zd) for block at %08llx\n",
   ops->oobretlen, ops->ooblen, from);
  return -EIO;
 }

 return 0;
}
