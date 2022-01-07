
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_peer_dev {int dev; int dnode; } ;
struct scif_dev {int lock; int spdev; int peer_add_work; } ;
struct TYPE_2__ {int conflock; int total; } ;


 int ENODEV ;
 int RCU_INIT_POINTER (int ,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int device_unregister (int *) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct scif_peer_dev* rcu_dereference (int ) ;
 TYPE_1__ scif_info ;
 int synchronize_rcu () ;

int scif_peer_unregister_device(struct scif_dev *scifdev)
{
 struct scif_peer_dev *spdev;

 mutex_lock(&scifdev->lock);

 flush_work(&scifdev->peer_add_work);





 spdev = rcu_dereference(scifdev->spdev);
 if (!spdev) {
  mutex_unlock(&scifdev->lock);
  return -ENODEV;
 }

 RCU_INIT_POINTER(scifdev->spdev, ((void*)0));
 synchronize_rcu();
 mutex_unlock(&scifdev->lock);

 dev_dbg(&spdev->dev, "Removing peer dnode %d\n", spdev->dnode);
 device_unregister(&spdev->dev);

 mutex_lock(&scif_info.conflock);
 scif_info.total--;
 mutex_unlock(&scif_info.conflock);
 return 0;
}
