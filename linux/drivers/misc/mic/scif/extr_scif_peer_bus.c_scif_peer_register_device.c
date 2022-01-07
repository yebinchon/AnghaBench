
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dev {int lock; int peer_add_work; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int scif_peer_initialize_device (struct scif_dev*) ;

void scif_peer_register_device(struct scif_dev *scifdev)
{
 int ret;

 mutex_lock(&scifdev->lock);
 ret = scif_peer_initialize_device(scifdev);
 if (ret)
  goto exit;
 schedule_work(&scifdev->peer_add_work);
exit:
 mutex_unlock(&scifdev->lock);
}
