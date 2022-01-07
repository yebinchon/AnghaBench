
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int HBUS_TARG_PRPH_RADDR ;
 int HBUS_TARG_PRPH_RDAT ;
 int iwl_trans_pcie_prph_msk (struct iwl_trans*) ;
 int iwl_trans_pcie_read32 (struct iwl_trans*,int ) ;
 int iwl_trans_pcie_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static u32 iwl_trans_pcie_read_prph(struct iwl_trans *trans, u32 reg)
{
 u32 mask = iwl_trans_pcie_prph_msk(trans);

 iwl_trans_pcie_write32(trans, HBUS_TARG_PRPH_RADDR,
          ((reg & mask) | (3 << 24)));
 return iwl_trans_pcie_read32(trans, HBUS_TARG_PRPH_RDAT);
}
