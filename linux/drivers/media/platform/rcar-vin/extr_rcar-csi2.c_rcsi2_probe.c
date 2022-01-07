
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct soc_device_attribute {int data; } ;
struct TYPE_7__ {int * ops; int function; } ;
struct TYPE_6__ {TYPE_4__ entity; int flags; int name; int * dev; int owner; } ;
struct rcar_csi2 {int notifier; int lanes; int * dev; TYPE_1__ subdev; TYPE_5__* pads; scalar_t__ stream_count; int lock; int info; } ;
struct platform_device {int dev; } ;
struct TYPE_8__ {int flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* KBUILD_MODNAME ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 unsigned int NR_OF_RCAR_CSI2_PAD ;
 size_t RCAR_CSI2_SINK ;
 unsigned int RCAR_CSI2_SOURCE_VC0 ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_NAME_SIZE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 char* dev_name (int *) ;
 struct rcar_csi2* devm_kzalloc (int *,int,int ) ;
 int media_entity_pads_init (TYPE_4__*,unsigned int,TYPE_5__*) ;
 int mutex_init (int *) ;
 int of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_csi2*) ;
 int pm_runtime_enable (int *) ;
 int r8a7795 ;
 int rcar_csi2_entity_ops ;
 int rcar_csi2_subdev_ops ;
 int rcsi2_parse_dt (struct rcar_csi2*) ;
 int rcsi2_probe_resources (struct rcar_csi2*,struct platform_device*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 struct soc_device_attribute* soc_device_match (int ) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_set_subdevdata (TYPE_1__*,int *) ;
 int v4l2_subdev_init (TYPE_1__*,int *) ;

__attribute__((used)) static int rcsi2_probe(struct platform_device *pdev)
{
 const struct soc_device_attribute *attr;
 struct rcar_csi2 *priv;
 unsigned int i;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->info = of_device_get_match_data(&pdev->dev);





 attr = soc_device_match(r8a7795);
 if (attr)
  priv->info = attr->data;

 priv->dev = &pdev->dev;

 mutex_init(&priv->lock);
 priv->stream_count = 0;

 ret = rcsi2_probe_resources(priv, pdev);
 if (ret) {
  dev_err(priv->dev, "Failed to get resources\n");
  return ret;
 }

 platform_set_drvdata(pdev, priv);

 ret = rcsi2_parse_dt(priv);
 if (ret)
  return ret;

 priv->subdev.owner = THIS_MODULE;
 priv->subdev.dev = &pdev->dev;
 v4l2_subdev_init(&priv->subdev, &rcar_csi2_subdev_ops);
 v4l2_set_subdevdata(&priv->subdev, &pdev->dev);
 snprintf(priv->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s %s",
   KBUILD_MODNAME, dev_name(&pdev->dev));
 priv->subdev.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;

 priv->subdev.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
 priv->subdev.entity.ops = &rcar_csi2_entity_ops;

 priv->pads[RCAR_CSI2_SINK].flags = MEDIA_PAD_FL_SINK;
 for (i = RCAR_CSI2_SOURCE_VC0; i < NR_OF_RCAR_CSI2_PAD; i++)
  priv->pads[i].flags = MEDIA_PAD_FL_SOURCE;

 ret = media_entity_pads_init(&priv->subdev.entity, NR_OF_RCAR_CSI2_PAD,
         priv->pads);
 if (ret)
  goto error;

 pm_runtime_enable(&pdev->dev);

 ret = v4l2_async_register_subdev(&priv->subdev);
 if (ret < 0)
  goto error;

 dev_info(priv->dev, "%d lanes found\n", priv->lanes);

 return 0;

error:
 v4l2_async_notifier_unregister(&priv->notifier);
 v4l2_async_notifier_cleanup(&priv->notifier);

 return ret;
}
