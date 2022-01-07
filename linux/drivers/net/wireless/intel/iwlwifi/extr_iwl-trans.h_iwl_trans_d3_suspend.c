
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* d3_suspend ) (struct iwl_trans*,int,int) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_trans*,int,int) ;

__attribute__((used)) static inline int iwl_trans_d3_suspend(struct iwl_trans *trans, bool test,
           bool reset)
{
 might_sleep();
 if (!trans->ops->d3_suspend)
  return 0;

 return trans->ops->d3_suspend(trans, test, reset);
}
