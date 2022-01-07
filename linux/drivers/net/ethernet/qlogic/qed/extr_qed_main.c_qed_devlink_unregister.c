
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dl; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_free (int ) ;
 int devlink_params_unregister (int ,int ,int ) ;
 int devlink_unregister (int ) ;
 int qed_devlink_params ;

__attribute__((used)) static void qed_devlink_unregister(struct qed_dev *cdev)
{
 if (!cdev->dl)
  return;

 devlink_params_unregister(cdev->dl, qed_devlink_params,
      ARRAY_SIZE(qed_devlink_params));

 devlink_unregister(cdev->dl);
 devlink_free(cdev->dl);
}
