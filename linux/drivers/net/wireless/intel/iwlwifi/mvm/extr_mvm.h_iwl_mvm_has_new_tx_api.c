
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {TYPE_2__* trans; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; } ;
struct TYPE_3__ {int use_tfh; } ;



__attribute__((used)) static inline bool iwl_mvm_has_new_tx_api(struct iwl_mvm *mvm)
{

 return mvm->trans->trans_cfg->use_tfh;
}
