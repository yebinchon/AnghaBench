
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct stm32_dcmi {int vdev; int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 struct stm32_dcmi* notifier_to_dcmi (struct v4l2_async_notifier*) ;
 int video_device_node_name (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void dcmi_graph_notify_unbind(struct v4l2_async_notifier *notifier,
         struct v4l2_subdev *sd,
         struct v4l2_async_subdev *asd)
{
 struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);

 dev_dbg(dcmi->dev, "Removing %s\n", video_device_node_name(dcmi->vdev));


 video_unregister_device(dcmi->vdev);
}
