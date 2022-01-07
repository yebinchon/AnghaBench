
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_part {TYPE_2__* parent; scalar_t__ offset; } ;
struct TYPE_3__ {int badblocks; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
typedef int loff_t ;
struct TYPE_4__ {int (* _block_markbad ) (TYPE_2__*,int ) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int part_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct mtd_part *part = mtd_to_part(mtd);
 int res;

 ofs += part->offset;
 res = part->parent->_block_markbad(part->parent, ofs);
 if (!res)
  mtd->ecc_stats.badblocks++;
 return res;
}
