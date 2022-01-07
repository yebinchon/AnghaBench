
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ll2_cb_ops {int dummy; } ;
struct qed_dev {TYPE_1__* ll2; } ;
struct TYPE_2__ {void* cb_cookie; struct qed_ll2_cb_ops const* cbs; } ;



__attribute__((used)) static void qed_ll2_register_cb_ops(struct qed_dev *cdev,
        const struct qed_ll2_cb_ops *ops,
        void *cookie)
{
 cdev->ll2->cbs = ops;
 cdev->ll2->cb_cookie = cookie;
}
