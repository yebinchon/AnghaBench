
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int SLC_DATA (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;

__attribute__((used)) static uint8_t lpc32xx_nand_read_byte(struct nand_chip *chip)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);

 return (uint8_t)readl(SLC_DATA(host->io_base));
}
