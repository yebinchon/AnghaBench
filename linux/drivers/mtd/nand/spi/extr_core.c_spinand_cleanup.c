
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int scratchbuf; int databuf; } ;
struct nand_device {int dummy; } ;


 int kfree (int ) ;
 int nanddev_cleanup (struct nand_device*) ;
 int spinand_manufacturer_cleanup (struct spinand_device*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static void spinand_cleanup(struct spinand_device *spinand)
{
 struct nand_device *nand = spinand_to_nand(spinand);

 nanddev_cleanup(nand);
 spinand_manufacturer_cleanup(spinand);
 kfree(spinand->databuf);
 kfree(spinand->scratchbuf);
}
