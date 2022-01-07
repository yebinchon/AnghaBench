
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int const* oob_poi; int controller; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;
struct TYPE_3__ {scalar_t__ virt; int dma; } ;
struct TYPE_4__ {scalar_t__ dmac; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ sram; TYPE_2__ base; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int atmel_nand_dma_transfer (TYPE_2__*,void*,int ,scalar_t__,int ) ;
 int memcpy_toio (scalar_t__,int const*,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static void atmel_nfc_copy_to_sram(struct nand_chip *chip, const u8 *buf,
       bool oob_required)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_hsmc_nand_controller *nc;
 int ret = -EIO;

 nc = to_hsmc_nand_controller(chip->controller);

 if (nc->base.dmac)
  ret = atmel_nand_dma_transfer(&nc->base, (void *)buf,
           nc->sram.dma, mtd->writesize,
           DMA_TO_DEVICE);


 if (ret)
  memcpy_toio(nc->sram.virt, buf, mtd->writesize);

 if (oob_required)
  memcpy_toio(nc->sram.virt + mtd->writesize, chip->oob_poi,
       mtd->oobsize);
}
