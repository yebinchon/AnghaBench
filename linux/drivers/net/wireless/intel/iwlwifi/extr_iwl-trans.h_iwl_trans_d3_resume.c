
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
typedef enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;
struct TYPE_2__ {int (* d3_resume ) (struct iwl_trans*,int*,int,int) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_trans*,int*,int,int) ;

__attribute__((used)) static inline int iwl_trans_d3_resume(struct iwl_trans *trans,
          enum iwl_d3_status *status,
          bool test, bool reset)
{
 might_sleep();
 if (!trans->ops->d3_resume)
  return 0;

 return trans->ops->d3_resume(trans, status, test, reset);
}
