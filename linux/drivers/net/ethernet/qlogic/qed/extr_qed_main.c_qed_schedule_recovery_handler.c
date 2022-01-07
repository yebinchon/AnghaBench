
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_2__* cdev; } ;
struct qed_common_cb_ops {int (* schedule_recovery_handler ) (void*) ;} ;
struct TYPE_3__ {struct qed_common_cb_ops* common; } ;
struct TYPE_4__ {void* ops_cookie; TYPE_1__ protocol_ops; } ;


 int stub1 (void*) ;

void qed_schedule_recovery_handler(struct qed_hwfn *p_hwfn)
{
 struct qed_common_cb_ops *ops = p_hwfn->cdev->protocol_ops.common;
 void *cookie = p_hwfn->cdev->ops_cookie;

 if (ops && ops->schedule_recovery_handler)
  ops->schedule_recovery_handler(cookie);
}
