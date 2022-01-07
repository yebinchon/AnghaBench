
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int vdev; int v4l2_dev; } ;


 int v4l2_info (int *,char*,int ) ;
 int video_device_node_name (int *) ;
 int video_is_registered (int *) ;
 int video_unregister_device (int *) ;

void rvin_v4l2_unregister(struct rvin_dev *vin)
{
 if (!video_is_registered(&vin->vdev))
  return;

 v4l2_info(&vin->v4l2_dev, "Removing %s\n",
    video_device_node_name(&vin->vdev));


 video_unregister_device(&vin->vdev);
}
