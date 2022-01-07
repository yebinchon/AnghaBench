
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int badblocks; } ;
struct mtd_info {scalar_t__ size; TYPE_1__ ecc_stats; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef scalar_t__ loff_t ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 int mtd_block_markbad (struct mtd_info*,scalar_t__) ;

__attribute__((used)) static int concat_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct mtd_concat *concat = CONCAT(mtd);
 int i, err = -EINVAL;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];

  if (ofs >= subdev->size) {
   ofs -= subdev->size;
   continue;
  }

  err = mtd_block_markbad(subdev, ofs);
  if (!err)
   mtd->ecc_stats.badblocks++;
  break;
 }

 return err;
}
