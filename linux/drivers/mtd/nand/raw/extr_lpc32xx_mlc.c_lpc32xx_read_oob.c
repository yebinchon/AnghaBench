
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int dummy_buf; } ;


 int lpc32xx_read_page (struct nand_chip*,int ,int,int) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int lpc32xx_read_oob(struct nand_chip *chip, int page)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);


 lpc32xx_read_page(chip, host->dummy_buf, 1, page);

 return 0;
}
