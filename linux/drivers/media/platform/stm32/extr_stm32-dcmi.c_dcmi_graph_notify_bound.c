
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int name; int entity; int fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct stm32_dcmi {int dev; TYPE_1__* vdev; } ;
struct TYPE_2__ {int entity; } ;


 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int MEDIA_PAD_FL_SOURCE ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 unsigned int media_create_pad_link (int *,int,int *,int ,int) ;
 int media_entity_get_fwnode_pad (int *,int ,int ) ;
 struct stm32_dcmi* notifier_to_dcmi (struct v4l2_async_notifier*) ;

__attribute__((used)) static int dcmi_graph_notify_bound(struct v4l2_async_notifier *notifier,
       struct v4l2_subdev *subdev,
       struct v4l2_async_subdev *asd)
{
 struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
 unsigned int ret;
 int src_pad;

 dev_dbg(dcmi->dev, "Subdev \"%s\" bound\n", subdev->name);





 src_pad = media_entity_get_fwnode_pad(&subdev->entity,
           subdev->fwnode,
           MEDIA_PAD_FL_SOURCE);

 ret = media_create_pad_link(&subdev->entity, src_pad,
        &dcmi->vdev->entity, 0,
        MEDIA_LNK_FL_IMMUTABLE |
        MEDIA_LNK_FL_ENABLED);
 if (ret)
  dev_err(dcmi->dev, "Failed to create media pad link with subdev \"%s\"\n",
   subdev->name);
 else
  dev_dbg(dcmi->dev, "DCMI is now linked to \"%s\"\n",
   subdev->name);

 return ret;
}
