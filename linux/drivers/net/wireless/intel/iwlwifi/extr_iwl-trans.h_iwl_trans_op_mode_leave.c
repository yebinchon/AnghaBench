
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {int state; int * op_mode; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* op_mode_leave ) (struct iwl_trans*) ;} ;


 int IWL_TRANS_NO_FW ;
 int might_sleep () ;
 int stub1 (struct iwl_trans*) ;

__attribute__((used)) static inline void iwl_trans_op_mode_leave(struct iwl_trans *trans)
{
 might_sleep();

 if (trans->ops->op_mode_leave)
  trans->ops->op_mode_leave(trans);

 trans->op_mode = ((void*)0);

 trans->state = IWL_TRANS_NO_FW;
}
