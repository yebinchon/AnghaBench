
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct atmel_isi {int vdev; int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 struct atmel_isi* notifier_to_isi (struct v4l2_async_notifier*) ;
 int video_device_node_name (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void isi_graph_notify_unbind(struct v4l2_async_notifier *notifier,
         struct v4l2_subdev *sd,
         struct v4l2_async_subdev *asd)
{
 struct atmel_isi *isi = notifier_to_isi(notifier);

 dev_dbg(isi->dev, "Removing %s\n", video_device_node_name(isi->vdev));


 video_unregister_device(isi->vdev);
}
