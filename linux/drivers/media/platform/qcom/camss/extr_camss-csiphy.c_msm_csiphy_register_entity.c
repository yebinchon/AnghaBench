
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_2__ entity; int name; int flags; int * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int flags; } ;
struct device {int dummy; } ;
struct csiphy_device {int id; TYPE_1__* camss; struct media_pad* pads; struct v4l2_subdev subdev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_ENT_F_IO_V4L ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 char* MSM_CSIPHY_NAME ;
 int MSM_CSIPHY_PADS_NUM ;
 size_t MSM_CSIPHY_PAD_SINK ;
 size_t MSM_CSIPHY_PAD_SRC ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int csiphy_init_formats (struct v4l2_subdev*,int *) ;
 int csiphy_media_ops ;
 int csiphy_v4l2_internal_ops ;
 int csiphy_v4l2_ops ;
 int dev_err (struct device*,char*,int) ;
 int media_entity_cleanup (TYPE_2__*) ;
 int media_entity_pads_init (TYPE_2__*,int ,struct media_pad*) ;
 int snprintf (int ,int ,char*,char*,int ) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct csiphy_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int msm_csiphy_register_entity(struct csiphy_device *csiphy,
          struct v4l2_device *v4l2_dev)
{
 struct v4l2_subdev *sd = &csiphy->subdev;
 struct media_pad *pads = csiphy->pads;
 struct device *dev = csiphy->camss->dev;
 int ret;

 v4l2_subdev_init(sd, &csiphy_v4l2_ops);
 sd->internal_ops = &csiphy_v4l2_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 snprintf(sd->name, ARRAY_SIZE(sd->name), "%s%d",
   MSM_CSIPHY_NAME, csiphy->id);
 v4l2_set_subdevdata(sd, csiphy);

 ret = csiphy_init_formats(sd, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "Failed to init format: %d\n", ret);
  return ret;
 }

 pads[MSM_CSIPHY_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 pads[MSM_CSIPHY_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

 sd->entity.function = MEDIA_ENT_F_IO_V4L;
 sd->entity.ops = &csiphy_media_ops;
 ret = media_entity_pads_init(&sd->entity, MSM_CSIPHY_PADS_NUM, pads);
 if (ret < 0) {
  dev_err(dev, "Failed to init media entity: %d\n", ret);
  return ret;
 }

 ret = v4l2_device_register_subdev(v4l2_dev, sd);
 if (ret < 0) {
  dev_err(dev, "Failed to register subdev: %d\n", ret);
  media_entity_cleanup(&sd->entity);
 }

 return ret;
}
