
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int SLC_DATA (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void lpc32xx_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
       int len)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);


 while (len-- > 0)
  writel((uint32_t)*buf++, SLC_DATA(host->io_base));
}
