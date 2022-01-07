
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct brcmnand_controller {int max_oob; scalar_t__* reg_offsets; } ;


 size_t BRCMNAND_OOB_WRITE_10_BASE ;
 size_t BRCMNAND_OOB_WRITE_BASE ;
 int nand_writereg (struct brcmnand_controller*,scalar_t__,int) ;

__attribute__((used)) static inline void oob_reg_write(struct brcmnand_controller *ctrl, u32 offs,
     u32 data)
{
 u16 offset0, offset10, reg_offs;

 offset0 = ctrl->reg_offsets[BRCMNAND_OOB_WRITE_BASE];
 offset10 = ctrl->reg_offsets[BRCMNAND_OOB_WRITE_10_BASE];

 if (offs >= ctrl->max_oob)
  return;

 if (offs >= 16 && offset10)
  reg_offs = offset10 + ((offs - 0x10) & ~0x03);
 else
  reg_offs = offset0 + (offs & ~0x03);

 nand_writereg(ctrl, reg_offs, data);
}
