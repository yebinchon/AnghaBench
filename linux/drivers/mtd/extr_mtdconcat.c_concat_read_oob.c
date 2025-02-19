
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_oob_ops {scalar_t__ retlen; scalar_t__ oobretlen; scalar_t__ len; scalar_t__ datbuf; scalar_t__ oobbuf; scalar_t__ ooblen; } ;
struct TYPE_2__ {int corrected; int failed; } ;
struct mtd_info {scalar_t__ size; TYPE_1__ ecc_stats; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef scalar_t__ loff_t ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 scalar_t__ mtd_is_bitflip (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mtd_read_oob (struct mtd_info*,scalar_t__,struct mtd_oob_ops*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
concat_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
{
 struct mtd_concat *concat = CONCAT(mtd);
 struct mtd_oob_ops devops = *ops;
 int i, err, ret = 0;

 ops->retlen = ops->oobretlen = 0;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];

  if (from >= subdev->size) {
   from -= subdev->size;
   continue;
  }


  if (from + devops.len > subdev->size)
   devops.len = subdev->size - from;

  err = mtd_read_oob(subdev, from, &devops);
  ops->retlen += devops.retlen;
  ops->oobretlen += devops.oobretlen;


  if (unlikely(err)) {
   if (mtd_is_eccerr(err)) {
    mtd->ecc_stats.failed++;
    ret = err;
   } else if (mtd_is_bitflip(err)) {
    mtd->ecc_stats.corrected++;

    if (!ret)
     ret = err;
   } else
    return err;
  }

  if (devops.datbuf) {
   devops.len = ops->len - ops->retlen;
   if (!devops.len)
    return ret;
   devops.datbuf += devops.retlen;
  }
  if (devops.oobbuf) {
   devops.ooblen = ops->ooblen - ops->oobretlen;
   if (!devops.ooblen)
    return ret;
   devops.oobbuf += ops->oobretlen;
  }

  from = 0;
 }
 return -EINVAL;
}
