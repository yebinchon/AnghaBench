
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct r852_device {scalar_t__ dma_usable; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;


 int R852_DATALINE ;
 int R852_DMA_LEN ;
 int memset (int *,int ,int) ;
 int nand_to_mtd (struct nand_chip*) ;
 int r852_do_dma (struct r852_device*,int *,int) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_read_reg (struct r852_device*,int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;

__attribute__((used)) static void r852_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));
 uint32_t reg;

 if (dev->card_unstable) {


  memset(buf, 0, len);
  return;
 }


 if (len == R852_DMA_LEN && dev->dma_usable) {
  r852_do_dma(dev, buf, 1);
  return;
 }


 while (len >= 4) {

  reg = r852_read_reg_dword(dev, R852_DATALINE);
  *buf++ = reg & 0xFF;
  *buf++ = (reg >> 8) & 0xFF;
  *buf++ = (reg >> 16) & 0xFF;
  *buf++ = (reg >> 24) & 0xFF;
  len -= 4;
 }


 while (len--)
  *buf++ = r852_read_reg(dev, R852_DATALINE);
}
