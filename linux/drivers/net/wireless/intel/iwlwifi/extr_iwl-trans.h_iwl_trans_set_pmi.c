
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_pmi ) (struct iwl_trans*,int) ;} ;


 int stub1 (struct iwl_trans*,int) ;

__attribute__((used)) static inline void iwl_trans_set_pmi(struct iwl_trans *trans, bool state)
{
 if (trans->ops->set_pmi)
  trans->ops->set_pmi(trans, state);
}
