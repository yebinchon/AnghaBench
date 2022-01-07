
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sw_reset ) (struct iwl_trans*) ;} ;


 int stub1 (struct iwl_trans*) ;

__attribute__((used)) static inline void iwl_trans_sw_reset(struct iwl_trans *trans)
{
 if (trans->ops->sw_reset)
  trans->ops->sw_reset(trans);
}
