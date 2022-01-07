
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_7__ {int function; } ;
struct TYPE_6__ {TYPE_4__ entity; int name; int * dev; int owner; } ;
struct csi2rx_priv {int notifier; scalar_t__ has_internal_dphy; int max_streams; int max_lanes; int num_lanes; TYPE_1__ subdev; TYPE_5__* pads; int lock; int * dev; } ;
struct TYPE_8__ {int flags; } ;


 unsigned int CSI2RX_PAD_MAX ;
 size_t CSI2RX_PAD_SINK ;
 unsigned int CSI2RX_PAD_SOURCE_STREAM0 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* KBUILD_MODNAME ;
 int MEDIA_ENT_F_VID_IF_BRIDGE ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_NAME_SIZE ;
 int csi2rx_get_resources (struct csi2rx_priv*,struct platform_device*) ;
 int csi2rx_parse_dt (struct csi2rx_priv*) ;
 int csi2rx_subdev_ops ;
 int dev_info (int *,char*,int ,int ,int ,char*) ;
 char* dev_name (int *) ;
 int kfree (struct csi2rx_priv*) ;
 struct csi2rx_priv* kzalloc (int,int ) ;
 int media_entity_pads_init (TYPE_4__*,unsigned int,TYPE_5__*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct csi2rx_priv*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_set_subdevdata (TYPE_1__*,int *) ;
 int v4l2_subdev_init (TYPE_1__*,int *) ;

__attribute__((used)) static int csi2rx_probe(struct platform_device *pdev)
{
 struct csi2rx_priv *csi2rx;
 unsigned int i;
 int ret;

 csi2rx = kzalloc(sizeof(*csi2rx), GFP_KERNEL);
 if (!csi2rx)
  return -ENOMEM;
 platform_set_drvdata(pdev, csi2rx);
 csi2rx->dev = &pdev->dev;
 mutex_init(&csi2rx->lock);

 ret = csi2rx_get_resources(csi2rx, pdev);
 if (ret)
  goto err_free_priv;

 ret = csi2rx_parse_dt(csi2rx);
 if (ret)
  goto err_free_priv;

 csi2rx->subdev.owner = THIS_MODULE;
 csi2rx->subdev.dev = &pdev->dev;
 v4l2_subdev_init(&csi2rx->subdev, &csi2rx_subdev_ops);
 v4l2_set_subdevdata(&csi2rx->subdev, &pdev->dev);
 snprintf(csi2rx->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s.%s",
   KBUILD_MODNAME, dev_name(&pdev->dev));


 csi2rx->subdev.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
  csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;

 ret = media_entity_pads_init(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
         csi2rx->pads);
 if (ret)
  goto err_cleanup;

 ret = v4l2_async_register_subdev(&csi2rx->subdev);
 if (ret < 0)
  goto err_cleanup;

 dev_info(&pdev->dev,
   "Probed CSI2RX with %u/%u lanes, %u streams, %s D-PHY\n",
   csi2rx->num_lanes, csi2rx->max_lanes, csi2rx->max_streams,
   csi2rx->has_internal_dphy ? "internal" : "no");

 return 0;

err_cleanup:
 v4l2_async_notifier_cleanup(&csi2rx->notifier);
err_free_priv:
 kfree(csi2rx);
 return ret;
}
