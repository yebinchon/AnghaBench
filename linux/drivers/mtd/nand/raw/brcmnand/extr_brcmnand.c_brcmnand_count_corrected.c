
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {int nand_version; } ;


 int BRCMNAND_CORR_COUNT ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;

__attribute__((used)) static inline u32 brcmnand_count_corrected(struct brcmnand_controller *ctrl)
{
 if (ctrl->nand_version < 0x0600)
  return 1;
 return brcmnand_read_reg(ctrl, BRCMNAND_CORR_COUNT);
}
