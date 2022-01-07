
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct bcm47xxnflash {int cc; } ;


 int BCMA_CC_NFLASH_CTL ;
 int NCTL_READY ;
 int bcma_cc_read32 (int ,int ) ;
 struct bcm47xxnflash* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int bcm47xxnflash_ops_bcm4706_dev_ready(struct nand_chip *nand_chip)
{
 struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);

 return !!(bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_CTL) & NCTL_READY);
}
