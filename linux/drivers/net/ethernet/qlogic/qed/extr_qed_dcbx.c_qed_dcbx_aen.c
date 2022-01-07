
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_3__* p_dcbx_info; TYPE_2__* cdev; } ;
struct qed_common_cb_ops {int (* dcbx_aen ) (void*,int *,int ) ;} ;
struct TYPE_6__ {int get; } ;
struct TYPE_4__ {struct qed_common_cb_ops* common; } ;
struct TYPE_5__ {void* ops_cookie; TYPE_1__ protocol_ops; } ;


 int stub1 (void*,int *,int ) ;

__attribute__((used)) static void qed_dcbx_aen(struct qed_hwfn *hwfn, u32 mib_type)
{
 struct qed_common_cb_ops *op = hwfn->cdev->protocol_ops.common;
 void *cookie = hwfn->cdev->ops_cookie;

 if (cookie && op->dcbx_aen)
  op->dcbx_aen(cookie, &hwfn->p_dcbx_info->get, mib_type);
}
