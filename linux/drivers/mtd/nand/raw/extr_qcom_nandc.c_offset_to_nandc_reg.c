
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nandc_regs {int read_location3; int read_location2; int read_location1; int read_location0; int ecc_buf_cfg; int orig_vld; int vld; int orig_cmd1; int cmd1; int clrreadstatus; int ecc_bch_cfg; int cfg1; int cfg0; int clrflashstatus; int exec; int chip_sel; int addr1; int addr0; int cmd; } ;
typedef int __le32 ;
__attribute__((used)) static __le32 *offset_to_nandc_reg(struct nandc_regs *regs, int offset)
{
 switch (offset) {
 case 134:
  return &regs->cmd;
 case 146:
  return &regs->addr0;
 case 145:
  return &regs->addr1;
 case 135:
  return &regs->chip_sel;
 case 136:
  return &regs->exec;
 case 133:
  return &regs->clrflashstatus;
 case 144:
  return &regs->cfg0;
 case 143:
  return &regs->cfg1;
 case 142:
  return &regs->ecc_bch_cfg;
 case 128:
  return &regs->clrreadstatus;
 case 141:
  return &regs->cmd1;
 case 140:
  return &regs->orig_cmd1;
 case 139:
  return &regs->vld;
 case 138:
  return &regs->orig_vld;
 case 137:
  return &regs->ecc_buf_cfg;
 case 132:
  return &regs->read_location0;
 case 131:
  return &regs->read_location1;
 case 130:
  return &regs->read_location2;
 case 129:
  return &regs->read_location3;
 default:
  return ((void*)0);
 }
}
