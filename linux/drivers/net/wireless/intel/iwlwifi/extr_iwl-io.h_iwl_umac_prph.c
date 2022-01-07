
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ umac_prph_offset; } ;



__attribute__((used)) static inline u32 iwl_umac_prph(struct iwl_trans *trans, u32 ofs)
{
 return ofs + trans->trans_cfg->umac_prph_offset;
}
