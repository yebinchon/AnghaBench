
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u_char ;
struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int SLC_DATA (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 scalar_t__ readl (int ) ;

__attribute__((used)) static void lpc32xx_nand_read_buf(struct nand_chip *chip, u_char *buf, int len)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);


 while (len-- > 0)
  *buf++ = (uint8_t)readl(SLC_DATA(host->io_base));
}
