
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int HEEP_CTRL_WRD_PCIEX_CTRL_REG ;
 int HEEP_CTRL_WRD_PCIEX_DATA_REG ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static void iwl_trans_pcie_write_shr(struct iwl_trans *trans, u32 reg, u32 val)
{
 iwl_write32(trans, HEEP_CTRL_WRD_PCIEX_DATA_REG, val);
 iwl_write32(trans, HEEP_CTRL_WRD_PCIEX_CTRL_REG,
      ((reg & 0x0000ffff) | (3 << 28)));
}
