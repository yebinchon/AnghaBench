
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_iscsi_cb_ops {int dummy; } ;
struct TYPE_2__ {struct qed_iscsi_cb_ops* iscsi; } ;
struct qed_dev {void* ops_cookie; TYPE_1__ protocol_ops; } ;



__attribute__((used)) static void qed_register_iscsi_ops(struct qed_dev *cdev,
       struct qed_iscsi_cb_ops *ops, void *cookie)
{
 cdev->protocol_ops.iscsi = ops;
 cdev->ops_cookie = cookie;
}
