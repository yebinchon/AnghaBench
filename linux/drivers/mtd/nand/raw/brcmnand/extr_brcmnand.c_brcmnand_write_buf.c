
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct brcmnand_host {int last_cmd; } ;


 int BUG () ;
 int LL_OP_WR ;

 int brcmnand_low_level_op (struct brcmnand_host*,int ,int const,int) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void brcmnand_write_buf(struct nand_chip *chip, const uint8_t *buf,
          int len)
{
 int i;
 struct brcmnand_host *host = nand_get_controller_data(chip);

 switch (host->last_cmd) {
 case 128:
  for (i = 0; i < len; i++)
   brcmnand_low_level_op(host, LL_OP_WR, buf[i],
        (i + 1) == len);
  break;
 default:
  BUG();
  break;
 }
}
