
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mtd_part {scalar_t__ offset; TYPE_1__* parent; } ;
struct mtd_info {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* _unlock ) (TYPE_1__*,scalar_t__,int ) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static int part_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct mtd_part *part = mtd_to_part(mtd);
 return part->parent->_unlock(part->parent, ofs + part->offset, len);
}
