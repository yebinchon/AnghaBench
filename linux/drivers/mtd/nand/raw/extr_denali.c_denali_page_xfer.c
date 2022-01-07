
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int cur_cs; } ;
struct denali_controller {scalar_t__ dma_avail; } ;


 int denali_dma_xfer (struct denali_controller*,void*,size_t,int,int) ;
 int denali_pio_xfer (struct denali_controller*,void*,size_t,int,int) ;
 int denali_select_target (struct nand_chip*,int ) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_page_xfer(struct nand_chip *chip, void *buf, size_t size,
       int page, bool write)
{
 struct denali_controller *denali = to_denali_controller(chip);

 denali_select_target(chip, chip->cur_cs);

 if (denali->dma_avail)
  return denali_dma_xfer(denali, buf, size, page, write);
 else
  return denali_pio_xfer(denali, buf, size, page, write);
}
