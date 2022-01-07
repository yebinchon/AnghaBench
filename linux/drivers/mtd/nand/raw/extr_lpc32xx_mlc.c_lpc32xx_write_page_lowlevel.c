
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int writesize; } ;
struct lpc32xx_nand_host {int mlcsubpages; int io_base; int * dma_buf; } ;


 int DMA_MEM_TO_DEV ;
 int MLC_BUFF (int ) ;
 int MLC_ECC_AUTO_ENC_REG (int ) ;
 int MLC_ECC_ENC_REG (int ) ;
 void* high_memory ;
 int lpc32xx_waitfunc_controller (struct nand_chip*) ;
 int lpc32xx_xmit_dma (struct mtd_info*,int *,int,int ) ;
 int memcpy (int *,int const*,int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 scalar_t__ use_dma ;
 int writeb (int,int ) ;
 int writel (int ,int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static int lpc32xx_write_page_lowlevel(struct nand_chip *chip,
           const uint8_t *buf, int oob_required,
           int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 const uint8_t *oobbuf = chip->oob_poi;
 uint8_t *dma_buf = (uint8_t *)buf;
 int res;
 int i, j;

 if (use_dma && (void *)buf >= high_memory) {
  dma_buf = host->dma_buf;
  memcpy(dma_buf, buf, mtd->writesize);
 }

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);

 for (i = 0; i < host->mlcsubpages; i++) {

  writeb(0x00, MLC_ECC_ENC_REG(host->io_base));


  if (use_dma) {
   res = lpc32xx_xmit_dma(mtd, dma_buf + i * 512, 512,
            DMA_MEM_TO_DEV);
   if (res)
    return res;
  } else {
   for (j = 0; j < (512 >> 2); j++) {
    writel(*((uint32_t *)(buf)),
           MLC_BUFF(host->io_base));
    buf += 4;
   }
  }
  writel(*((uint32_t *)(oobbuf)), MLC_BUFF(host->io_base));
  oobbuf += 4;
  writew(*((uint16_t *)(oobbuf)), MLC_BUFF(host->io_base));
  oobbuf += 12;


  writeb(0x00, MLC_ECC_AUTO_ENC_REG(host->io_base));


  lpc32xx_waitfunc_controller(chip);
 }

 return nand_prog_page_end_op(chip);
}
