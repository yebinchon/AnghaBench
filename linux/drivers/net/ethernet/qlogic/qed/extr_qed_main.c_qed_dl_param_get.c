
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_devlink {struct qed_dev* cdev; } ;
struct qed_dev {int iwarp_cmt; } ;
struct TYPE_2__ {int vbool; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;


 struct qed_devlink* devlink_priv (struct devlink*) ;

__attribute__((used)) static int qed_dl_param_get(struct devlink *dl, u32 id,
       struct devlink_param_gset_ctx *ctx)
{
 struct qed_devlink *qed_dl;
 struct qed_dev *cdev;

 qed_dl = devlink_priv(dl);
 cdev = qed_dl->cdev;
 ctx->val.vbool = cdev->iwarp_cmt;

 return 0;
}
