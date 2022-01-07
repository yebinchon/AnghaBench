
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ umac_prph_offset; } ;


 int iwl_poll_prph_bit (struct iwl_trans*,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static inline int iwl_poll_umac_prph_bit(struct iwl_trans *trans, u32 addr,
      u32 bits, u32 mask, int timeout)
{
 return iwl_poll_prph_bit(trans, addr +
     trans->trans_cfg->umac_prph_offset,
     bits, mask, timeout);
}
