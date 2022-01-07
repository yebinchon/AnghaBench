
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_CORR_ADDR ;
 int BRCMNAND_CORR_EXT_ADDR ;
 int BRCMNAND_UNCORR_ADDR ;
 int BRCMNAND_UNCORR_EXT_ADDR ;
 int brcmnand_write_reg (struct brcmnand_controller*,int ,int ) ;

__attribute__((used)) static void brcmnand_clear_ecc_addr(struct brcmnand_controller *ctrl)
{


 brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
 brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
 brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
 brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
}
