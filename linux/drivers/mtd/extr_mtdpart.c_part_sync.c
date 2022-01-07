
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {TYPE_1__* parent; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int (* _sync ) (TYPE_1__*) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void part_sync(struct mtd_info *mtd)
{
 struct mtd_part *part = mtd_to_part(mtd);
 part->parent->_sync(part->parent);
}
