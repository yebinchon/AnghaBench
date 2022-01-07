
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int cur_cs; } ;


 int stm32_fmc2_select_chip (struct nand_chip*,int ) ;
 int stm32_fmc2_sequencer_write (struct nand_chip*,int const*,int,int,int) ;

__attribute__((used)) static int stm32_fmc2_sequencer_write_page(struct nand_chip *chip,
        const u8 *buf,
        int oob_required,
        int page)
{
 int ret;


 ret = stm32_fmc2_select_chip(chip, chip->cur_cs);
 if (ret)
  return ret;

 return stm32_fmc2_sequencer_write(chip, buf, oob_required, page, 0);
}
