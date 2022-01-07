
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union devlink_param_value {int vbool; } ;
struct qed_devlink {struct qed_dev* cdev; } ;
struct qed_dev {int iwarp_cmt; struct devlink* dl; TYPE_1__* pdev; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int QED_DEVLINK_PARAM_ID_IWARP_CMT ;
 struct devlink* devlink_alloc (int *,int) ;
 int devlink_free (struct devlink*) ;
 int devlink_param_driverinit_value_set (struct devlink*,int ,union devlink_param_value) ;
 int devlink_params_publish (struct devlink*) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 struct qed_devlink* devlink_priv (struct devlink*) ;
 int devlink_register (struct devlink*,int *) ;
 int devlink_unregister (struct devlink*) ;
 int qed_devlink_params ;
 int qed_dl_ops ;

__attribute__((used)) static int qed_devlink_register(struct qed_dev *cdev)
{
 union devlink_param_value value;
 struct qed_devlink *qed_dl;
 struct devlink *dl;
 int rc;

 dl = devlink_alloc(&qed_dl_ops, sizeof(*qed_dl));
 if (!dl)
  return -ENOMEM;

 qed_dl = devlink_priv(dl);

 cdev->dl = dl;
 qed_dl->cdev = cdev;

 rc = devlink_register(dl, &cdev->pdev->dev);
 if (rc)
  goto err_free;

 rc = devlink_params_register(dl, qed_devlink_params,
         ARRAY_SIZE(qed_devlink_params));
 if (rc)
  goto err_unregister;

 value.vbool = 0;
 devlink_param_driverinit_value_set(dl,
        QED_DEVLINK_PARAM_ID_IWARP_CMT,
        value);

 devlink_params_publish(dl);
 cdev->iwarp_cmt = 0;

 return 0;

err_unregister:
 devlink_unregister(dl);

err_free:
 cdev->dl = ((void*)0);
 devlink_free(dl);

 return rc;
}
