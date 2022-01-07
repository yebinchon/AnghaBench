
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int options; int controller; } ;
struct atmel_nand_controller {scalar_t__ dmac; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int virt; int dma; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 int DMA_TO_DEVICE ;
 int MIN_DMA_LEN ;
 int NAND_BUSWIDTH_16 ;
 int atmel_nand_dma_transfer (struct atmel_nand_controller*,void*,int ,int,int ) ;
 int iowrite16_rep (int ,int const*,int) ;
 int iowrite8_rep (int ,int const*,int) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;
 scalar_t__ virt_addr_valid (int const*) ;

__attribute__((used)) static void atmel_nand_write_buf(struct nand_chip *chip, const u8 *buf, int len)
{
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_nand_controller *nc;

 nc = to_nand_controller(chip->controller);






 if (nc->dmac && virt_addr_valid(buf) &&
     len >= MIN_DMA_LEN &&
     !atmel_nand_dma_transfer(nc, (void *)buf, nand->activecs->io.dma,
         len, DMA_TO_DEVICE))
  return;

 if (chip->options & NAND_BUSWIDTH_16)
  iowrite16_rep(nand->activecs->io.virt, buf, len / 2);
 else
  iowrite8_rep(nand->activecs->io.virt, buf, len);
}
