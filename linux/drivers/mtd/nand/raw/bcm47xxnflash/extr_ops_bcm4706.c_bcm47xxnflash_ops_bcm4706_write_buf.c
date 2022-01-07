
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct bcm47xxnflash {int curr_command; } ;



 int bcm47xxnflash_ops_bcm4706_write (int ,int const*,int) ;
 struct bcm47xxnflash* nand_get_controller_data (struct nand_chip*) ;
 int nand_to_mtd (struct nand_chip*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void bcm47xxnflash_ops_bcm4706_write_buf(struct nand_chip *nand_chip,
      const uint8_t *buf, int len)
{
 struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);

 switch (b47n->curr_command) {
 case 128:
  bcm47xxnflash_ops_bcm4706_write(nand_to_mtd(nand_chip), buf,
      len);
  return;
 }

 pr_err("Invalid command for buf write: 0x%X\n", b47n->curr_command);
}
