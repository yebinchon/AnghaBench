
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ umac_prph_offset; } ;


 int iwl_write_prph_no_grab (struct iwl_trans*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void iwl_write_umac_prph_no_grab(struct iwl_trans *trans, u32 ofs,
            u32 val)
{
 iwl_write_prph_no_grab(trans, ofs + trans->trans_cfg->umac_prph_offset,
          val);
}
