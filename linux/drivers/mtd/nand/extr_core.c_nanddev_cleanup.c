
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_device {int dummy; } ;


 int nanddev_bbt_cleanup (struct nand_device*) ;
 scalar_t__ nanddev_bbt_is_initialized (struct nand_device*) ;

void nanddev_cleanup(struct nand_device *nand)
{
 if (nanddev_bbt_is_initialized(nand))
  nanddev_bbt_cleanup(nand);
}
