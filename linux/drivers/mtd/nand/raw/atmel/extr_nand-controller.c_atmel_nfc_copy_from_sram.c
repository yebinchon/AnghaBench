
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int * oob_poi; int controller; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;
struct TYPE_3__ {scalar_t__ virt; int dma; } ;
struct TYPE_4__ {scalar_t__ dmac; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ sram; TYPE_2__ base; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int atmel_nand_dma_transfer (TYPE_2__*,int *,int ,scalar_t__,int ) ;
 int memcpy_fromio (int *,scalar_t__,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static void atmel_nfc_copy_from_sram(struct nand_chip *chip, u8 *buf,
         bool oob_required)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_hsmc_nand_controller *nc;
 int ret = -EIO;

 nc = to_hsmc_nand_controller(chip->controller);

 if (nc->base.dmac)
  ret = atmel_nand_dma_transfer(&nc->base, buf, nc->sram.dma,
           mtd->writesize, DMA_FROM_DEVICE);


 if (ret)
  memcpy_fromio(buf, nc->sram.virt, mtd->writesize);

 if (oob_required)
  memcpy_fromio(chip->oob_poi, nc->sram.virt + mtd->writesize,
         mtd->oobsize);
}
