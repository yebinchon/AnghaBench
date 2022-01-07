
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int report_work; int fatal_report_work; int wq_lock; int wq; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {int device; TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int dev_name (int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int mlx5_fw_fatal_reporter_err_work ;
 int mlx5_fw_reporter_err_work ;
 int mlx5_fw_reporters_create (struct mlx5_core_dev*) ;
 int mlx5_fw_reporters_destroy (struct mlx5_core_dev*) ;
 int spin_lock_init (int *) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

int mlx5_health_init(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health;
 char *name;

 mlx5_fw_reporters_create(dev);

 health = &dev->priv.health;
 name = kmalloc(64, GFP_KERNEL);
 if (!name)
  goto out_err;

 strcpy(name, "mlx5_health");
 strcat(name, dev_name(dev->device));
 health->wq = create_singlethread_workqueue(name);
 kfree(name);
 if (!health->wq)
  goto out_err;
 spin_lock_init(&health->wq_lock);
 INIT_WORK(&health->fatal_report_work, mlx5_fw_fatal_reporter_err_work);
 INIT_WORK(&health->report_work, mlx5_fw_reporter_err_work);

 return 0;

out_err:
 mlx5_fw_reporters_destroy(dev);
 return -ENOMEM;
}
