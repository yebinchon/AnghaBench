
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct brcmnand_controller {scalar_t__* reg_offsets; } ;
typedef enum brcmnand_reg { ____Placeholder_brcmnand_reg } brcmnand_reg ;


 int nand_writereg (struct brcmnand_controller*,scalar_t__,int ) ;

__attribute__((used)) static inline void brcmnand_write_reg(struct brcmnand_controller *ctrl,
          enum brcmnand_reg reg, u32 val)
{
 u16 offs = ctrl->reg_offsets[reg];

 if (offs)
  nand_writereg(ctrl, offs, val);
}
