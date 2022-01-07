
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct cosm_device {int sysfs_heartbeat_enable; int index; TYPE_3__ dev; int state_sysfs; TYPE_2__* sdev; int attr_group; int scif_work; int reset_trigger_work; int cosm_mutex; } ;
struct TYPE_6__ {int sd; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;


 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (TYPE_2__*) ;
 int atomic_add_return (int,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cosm_create_debug_dir (struct cosm_device*) ;
 int cosm_reset_trigger_work ;
 int cosm_scif_exit () ;
 int cosm_scif_init () ;
 int cosm_scif_work ;
 int cosm_sysfs_init (struct cosm_device*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 TYPE_2__* device_create_with_groups (int ,int ,int ,struct cosm_device*,int ,char*,int ) ;
 int device_destroy (int ,int ) ;
 int g_cosm_class ;
 int g_num_dev ;
 int mutex_init (int *) ;
 int sysfs_get_dirent (int ,char*) ;

__attribute__((used)) static int cosm_driver_probe(struct cosm_device *cdev)
{
 int rc;


 if (atomic_add_return(1, &g_num_dev) == 1) {
  rc = cosm_scif_init();
  if (rc)
   goto scif_exit;
 }
 mutex_init(&cdev->cosm_mutex);
 INIT_WORK(&cdev->reset_trigger_work, cosm_reset_trigger_work);
 INIT_WORK(&cdev->scif_work, cosm_scif_work);
 cdev->sysfs_heartbeat_enable = 1;
 cosm_sysfs_init(cdev);
 cdev->sdev = device_create_with_groups(g_cosm_class, cdev->dev.parent,
          MKDEV(0, cdev->index), cdev, cdev->attr_group,
          "mic%d", cdev->index);
 if (IS_ERR(cdev->sdev)) {
  rc = PTR_ERR(cdev->sdev);
  dev_err(&cdev->dev, "device_create_with_groups failed rc %d\n",
   rc);
  goto scif_exit;
 }

 cdev->state_sysfs = sysfs_get_dirent(cdev->sdev->kobj.sd,
  "state");
 if (!cdev->state_sysfs) {
  rc = -ENODEV;
  dev_err(&cdev->dev, "sysfs_get_dirent failed rc %d\n", rc);
  goto destroy_device;
 }
 cosm_create_debug_dir(cdev);
 return 0;
destroy_device:
 device_destroy(g_cosm_class, MKDEV(0, cdev->index));
scif_exit:
 if (atomic_dec_and_test(&g_num_dev))
  cosm_scif_exit();
 return rc;
}
