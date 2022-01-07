
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;
struct bcm47xxnflash {int curr_command; int curr_column; int* id_data; struct bcma_drv_cc* cc; } ;


 int ARRAY_SIZE (int*) ;
 int BCMA_CC_NFLASH_DATA ;



 int NCTL_READ ;
 int bcm47xxnflash_ops_bcm4706_ctl_cmd (struct bcma_drv_cc*,int ) ;
 int bcm47xxnflash_ops_bcm4706_read (struct mtd_info*,int*,int) ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 struct bcm47xxnflash* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static u8 bcm47xxnflash_ops_bcm4706_read_byte(struct nand_chip *nand_chip)
{
 struct mtd_info *mtd = nand_to_mtd(nand_chip);
 struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
 struct bcma_drv_cc *cc = b47n->cc;
 u32 tmp = 0;

 switch (b47n->curr_command) {
 case 130:
  if (b47n->curr_column >= ARRAY_SIZE(b47n->id_data)) {
   pr_err("Requested invalid id_data: %d\n",
          b47n->curr_column);
   return 0;
  }
  return b47n->id_data[b47n->curr_column++];
 case 128:
  if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, NCTL_READ))
   return 0;
  return bcma_cc_read32(cc, BCMA_CC_NFLASH_DATA) & 0xff;
 case 129:
  bcm47xxnflash_ops_bcm4706_read(mtd, (u8 *)&tmp, 4);
  return tmp & 0xFF;
 }

 pr_err("Invalid command for byte read: 0x%X\n", b47n->curr_command);
 return 0;
}
