
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scif_status {int dummy; } ;
struct scif_peer_dev {int dev; int dnode; } ;
struct scif_dev {int spdev; int node; TYPE_1__* sdev; int signal_pool; } ;
typedef int pool_name ;
struct TYPE_4__ {int conflock; int total; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int RCU_INIT_POINTER (int ,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ) ;
 int device_add (int *) ;
 int device_del (int *) ;
 int dmam_pool_create (char*,int *,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 struct scif_peer_dev* rcu_dereference (int ) ;
 TYPE_2__ scif_info ;
 int scnprintf (char*,int,char*,int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static int scif_peer_add_device(struct scif_dev *scifdev)
{
 struct scif_peer_dev *spdev = rcu_dereference(scifdev->spdev);
 char pool_name[16];
 int ret;

 ret = device_add(&spdev->dev);
 put_device(&spdev->dev);
 if (ret) {
  dev_err(&scifdev->sdev->dev,
   "dnode %d: peer device_add failed\n", scifdev->node);
  goto put_spdev;
 }

 scnprintf(pool_name, sizeof(pool_name), "scif-%d", spdev->dnode);
 scifdev->signal_pool = dmam_pool_create(pool_name, &scifdev->sdev->dev,
      sizeof(struct scif_status), 1,
      0);
 if (!scifdev->signal_pool) {
  dev_err(&scifdev->sdev->dev,
   "dnode %d: dmam_pool_create failed\n", scifdev->node);
  ret = -ENOMEM;
  goto del_spdev;
 }
 dev_dbg(&spdev->dev, "Added peer dnode %d\n", spdev->dnode);
 return 0;
del_spdev:
 device_del(&spdev->dev);
put_spdev:
 RCU_INIT_POINTER(scifdev->spdev, ((void*)0));
 synchronize_rcu();
 put_device(&spdev->dev);

 mutex_lock(&scif_info.conflock);
 scif_info.total--;
 mutex_unlock(&scif_info.conflock);
 return ret;
}
