
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
 int nand_to_mtd (struct nand_chip*) ;
 int r852_do_dma (struct r852_device*,int*,int ) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_write_reg (struct r852_device*,int ,int ) ;
 int r852_write_reg_dword (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));
 uint32_t reg;


 if (dev->card_unstable)
  return;


 if (len == R852_DMA_LEN && dev->dma_usable) {
  r852_do_dma(dev, (uint8_t *)buf, 0);
  return;
 }


 while (len >= 4) {
  reg = buf[0] | buf[1] << 8 | buf[2] << 16 | buf[3] << 24;
  r852_write_reg_dword(dev, R852_DATALINE, reg);
  buf += 4;
  len -= 4;

 }


 while (len > 0) {
  r852_write_reg(dev, R852_DATALINE, *buf++);
  len--;
 }
}
