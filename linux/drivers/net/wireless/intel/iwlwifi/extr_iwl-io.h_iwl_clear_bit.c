
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int iwl_trans_set_bits_mask (struct iwl_trans*,int ,int ,int ) ;

__attribute__((used)) static inline void iwl_clear_bit(struct iwl_trans *trans, u32 reg, u32 mask)
{
 iwl_trans_set_bits_mask(trans, reg, mask, 0);
}
