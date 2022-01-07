
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mtd_part {TYPE_1__* parent; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* _write_user_prot_reg ) (TYPE_1__*,int ,size_t,size_t*,int *) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_1__*,int ,size_t,size_t*,int *) ;

__attribute__((used)) static int part_write_user_prot_reg(struct mtd_info *mtd, loff_t from,
  size_t len, size_t *retlen, u_char *buf)
{
 struct mtd_part *part = mtd_to_part(mtd);
 return part->parent->_write_user_prot_reg(part->parent, from, len,
        retlen, buf);
}
