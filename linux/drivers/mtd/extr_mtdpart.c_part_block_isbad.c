
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {TYPE_1__* parent; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* _block_isbad ) (TYPE_1__*,int ) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int part_block_isbad(struct mtd_info *mtd, loff_t ofs)
{
 struct mtd_part *part = mtd_to_part(mtd);
 ofs += part->offset;
 return part->parent->_block_isbad(part->parent, ofs);
}
