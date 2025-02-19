
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int dummy; } ;
struct bcm47xxnflash {int cc; } ;


 int NAND_CMD_NONE ;
 int NAND_CMD_RESET ;
 int NAND_CTRL_CLE ;
 int NCTL_CMD0 ;
 int NCTL_CSA ;
 int bcm47xxnflash_ops_bcm4706_ctl_cmd (int ,int) ;
 struct bcm47xxnflash* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void bcm47xxnflash_ops_bcm4706_cmd_ctrl(struct nand_chip *nand_chip,
            int cmd, unsigned int ctrl)
{
 struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
 u32 code = 0;

 if (cmd == NAND_CMD_NONE)
  return;

 if (cmd & NAND_CTRL_CLE)
  code = cmd | NCTL_CMD0;


 if (cmd != NAND_CMD_RESET)
  code |= NCTL_CSA;

 bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, code);
}
