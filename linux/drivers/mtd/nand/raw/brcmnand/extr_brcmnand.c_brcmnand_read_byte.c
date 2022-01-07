
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct brcmnand_host {int last_cmd; int last_byte; int last_addr; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int* flash_cache; int dev; } ;


 int BRCMNAND_ID ;
 int BRCMNAND_ID_EXT ;
 int BRCMNAND_INTFC_STATUS ;
 int BRCMNAND_LL_RDATA ;
 int FC_BYTES ;
 int INTFC_FLASH_STATUS ;
 int LL_OP_RD ;






 int NAND_STATUS_WP ;
 scalar_t__ ONFI_SUBFEATURE_PARAM_LEN ;
 int brcmnand_low_level_op (struct brcmnand_host*,int ,int ,int) ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int nand_change_read_column_op (struct nand_chip*,int,int *,int ,int) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 int oob_reg_read (struct brcmnand_controller*,int) ;
 int wp_on ;

__attribute__((used)) static uint8_t brcmnand_read_byte(struct nand_chip *chip)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 uint8_t ret = 0;
 int addr, offs;

 switch (host->last_cmd) {
 case 131:
  if (host->last_byte < 4)
   ret = brcmnand_read_reg(ctrl, BRCMNAND_ID) >>
    (24 - (host->last_byte << 3));
  else if (host->last_byte < 8)
   ret = brcmnand_read_reg(ctrl, BRCMNAND_ID_EXT) >>
    (56 - (host->last_byte << 3));
  break;

 case 130:
  ret = oob_reg_read(ctrl, host->last_byte);
  break;

 case 128:
  ret = brcmnand_read_reg(ctrl, BRCMNAND_INTFC_STATUS) &
     INTFC_FLASH_STATUS;
  if (wp_on)
   ret |= NAND_STATUS_WP;
  break;

 case 132:
 case 129:
  addr = host->last_addr + host->last_byte;
  offs = addr & (FC_BYTES - 1);


  if (host->last_byte > 0 && offs == 0)
   nand_change_read_column_op(chip, addr, ((void*)0), 0, 0);

  ret = ctrl->flash_cache[offs];
  break;
 case 133:
  if (host->last_byte >= ONFI_SUBFEATURE_PARAM_LEN) {
   ret = 0;
  } else {
   bool last = host->last_byte ==
    ONFI_SUBFEATURE_PARAM_LEN - 1;
   brcmnand_low_level_op(host, LL_OP_RD, 0, last);
   ret = brcmnand_read_reg(ctrl, BRCMNAND_LL_RDATA) & 0xff;
  }
 }

 dev_dbg(ctrl->dev, "read byte = 0x%02x\n", ret);
 host->last_byte++;

 return ret;
}
