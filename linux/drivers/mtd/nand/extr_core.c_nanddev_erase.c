
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_pos {int dummy; } ;
struct nand_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* erase ) (struct nand_device*,struct nand_pos const*) ;} ;


 int EIO ;
 scalar_t__ nanddev_isbad (struct nand_device*,struct nand_pos const*) ;
 scalar_t__ nanddev_isreserved (struct nand_device*,struct nand_pos const*) ;
 int nanddev_pos_to_offs (struct nand_device*,struct nand_pos const*) ;
 int pr_warn (char*,int ) ;
 int stub1 (struct nand_device*,struct nand_pos const*) ;

int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos)
{
 if (nanddev_isbad(nand, pos) || nanddev_isreserved(nand, pos)) {
  pr_warn("attempt to erase a bad/reserved block @%llx\n",
   nanddev_pos_to_offs(nand, pos));
  return -EIO;
 }

 return nand->ops->erase(nand, pos);
}
