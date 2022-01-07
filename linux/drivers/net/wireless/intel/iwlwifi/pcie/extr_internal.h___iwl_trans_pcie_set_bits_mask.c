
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int iwl_read32 (struct iwl_trans*,int) ;
 int iwl_write32 (struct iwl_trans*,int,int) ;

__attribute__((used)) static inline void __iwl_trans_pcie_set_bits_mask(struct iwl_trans *trans,
        u32 reg, u32 mask, u32 value)
{
 u32 v;





 v = iwl_read32(trans, reg);
 v &= ~mask;
 v |= value;
 iwl_write32(trans, reg, v);
}
