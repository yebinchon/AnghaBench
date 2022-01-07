
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; int name; int fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_subdev* sd; } ;
struct TYPE_2__ {int entity; } ;
struct csi2rx_priv {scalar_t__ source_pad; TYPE_1__ subdev; struct v4l2_subdev* source_subdev; int dev; } ;


 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int MEDIA_PAD_FL_SOURCE ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ) ;
 int media_create_pad_link (int *,int,int *,int ,int) ;
 scalar_t__ media_entity_get_fwnode_pad (int *,int ,int ) ;
 struct csi2rx_priv* v4l2_subdev_to_csi2rx (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2rx_async_bound(struct v4l2_async_notifier *notifier,
         struct v4l2_subdev *s_subdev,
         struct v4l2_async_subdev *asd)
{
 struct v4l2_subdev *subdev = notifier->sd;
 struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);

 csi2rx->source_pad = media_entity_get_fwnode_pad(&s_subdev->entity,
        s_subdev->fwnode,
        MEDIA_PAD_FL_SOURCE);
 if (csi2rx->source_pad < 0) {
  dev_err(csi2rx->dev, "Couldn't find output pad for subdev %s\n",
   s_subdev->name);
  return csi2rx->source_pad;
 }

 csi2rx->source_subdev = s_subdev;

 dev_dbg(csi2rx->dev, "Bound %s pad: %d\n", s_subdev->name,
  csi2rx->source_pad);

 return media_create_pad_link(&csi2rx->source_subdev->entity,
         csi2rx->source_pad,
         &csi2rx->subdev.entity, 0,
         MEDIA_LNK_FL_ENABLED |
         MEDIA_LNK_FL_IMMUTABLE);
}
