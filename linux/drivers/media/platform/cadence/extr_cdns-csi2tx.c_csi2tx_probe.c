
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct csi2tx_vops {int dummy; } ;
struct TYPE_8__ {int function; } ;
struct TYPE_7__ {TYPE_3__ entity; int name; int flags; TYPE_5__* dev; int owner; } ;
struct csi2tx_priv {scalar_t__ has_internal_dphy; int max_streams; int max_lanes; int num_lanes; TYPE_1__ subdev; TYPE_4__* pads; int * pad_fmts; struct csi2tx_vops* vops; TYPE_5__* dev; int lock; } ;
struct TYPE_9__ {int flags; } ;


 unsigned int CSI2TX_PAD_MAX ;
 unsigned int CSI2TX_PAD_SINK_STREAM0 ;
 size_t CSI2TX_PAD_SOURCE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* KBUILD_MODNAME ;
 int MEDIA_ENT_F_VID_IF_BRIDGE ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_NAME_SIZE ;
 int csi2tx_check_lanes (struct csi2tx_priv*) ;
 int csi2tx_get_resources (struct csi2tx_priv*,struct platform_device*) ;
 int csi2tx_of_table ;
 int csi2tx_subdev_ops ;
 int dev_info (TYPE_5__*,char*,int ,int ,int ,char*) ;
 char* dev_name (TYPE_5__*) ;
 int fmt_default ;
 int kfree (struct csi2tx_priv*) ;
 struct csi2tx_priv* kzalloc (int,int ) ;
 int media_entity_pads_init (TYPE_3__*,unsigned int,TYPE_4__*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct csi2tx_priv*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_subdev_init (TYPE_1__*,int *) ;

__attribute__((used)) static int csi2tx_probe(struct platform_device *pdev)
{
 struct csi2tx_priv *csi2tx;
 const struct of_device_id *of_id;
 unsigned int i;
 int ret;

 csi2tx = kzalloc(sizeof(*csi2tx), GFP_KERNEL);
 if (!csi2tx)
  return -ENOMEM;
 platform_set_drvdata(pdev, csi2tx);
 mutex_init(&csi2tx->lock);
 csi2tx->dev = &pdev->dev;

 ret = csi2tx_get_resources(csi2tx, pdev);
 if (ret)
  goto err_free_priv;

 of_id = of_match_node(csi2tx_of_table, pdev->dev.of_node);
 csi2tx->vops = (struct csi2tx_vops *)of_id->data;

 v4l2_subdev_init(&csi2tx->subdev, &csi2tx_subdev_ops);
 csi2tx->subdev.owner = THIS_MODULE;
 csi2tx->subdev.dev = &pdev->dev;
 csi2tx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 snprintf(csi2tx->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s.%s",
   KBUILD_MODNAME, dev_name(&pdev->dev));

 ret = csi2tx_check_lanes(csi2tx);
 if (ret)
  goto err_free_priv;


 csi2tx->subdev.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 csi2tx->pads[CSI2TX_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
 for (i = CSI2TX_PAD_SINK_STREAM0; i < CSI2TX_PAD_MAX; i++)
  csi2tx->pads[i].flags = MEDIA_PAD_FL_SINK;







 for (i = CSI2TX_PAD_SINK_STREAM0; i < CSI2TX_PAD_MAX; i++)
  csi2tx->pad_fmts[i] = fmt_default;

 ret = media_entity_pads_init(&csi2tx->subdev.entity, CSI2TX_PAD_MAX,
         csi2tx->pads);
 if (ret)
  goto err_free_priv;

 ret = v4l2_async_register_subdev(&csi2tx->subdev);
 if (ret < 0)
  goto err_free_priv;

 dev_info(&pdev->dev,
   "Probed CSI2TX with %u/%u lanes, %u streams, %s D-PHY\n",
   csi2tx->num_lanes, csi2tx->max_lanes, csi2tx->max_streams,
   csi2tx->has_internal_dphy ? "internal" : "no");

 return 0;

err_free_priv:
 kfree(csi2tx);
 return ret;
}
