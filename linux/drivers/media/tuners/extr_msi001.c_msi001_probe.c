
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {TYPE_2__* ctrl_handler; } ;
struct msi001_dev {TYPE_2__ hdl; TYPE_1__ sd; void* if_gain; void* mixer_gain; void* lna_gain; void* bandwidth_auto; void* bandwidth; int f_tuner; struct spi_device* spi; } ;
struct TYPE_8__ {int rangelow; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CID_RF_TUNER_BANDWIDTH ;
 int V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ;
 int V4L2_CID_RF_TUNER_IF_GAIN ;
 int V4L2_CID_RF_TUNER_LNA_GAIN ;
 int V4L2_CID_RF_TUNER_MIXER_GAIN ;
 TYPE_5__* bands ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int kfree (struct msi001_dev*) ;
 struct msi001_dev* kzalloc (int,int ) ;
 int msi001_ctrl_ops ;
 int msi001_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int,int,int,int) ;
 int v4l2_spi_subdev_init (TYPE_1__*,struct spi_device*,int *) ;

__attribute__((used)) static int msi001_probe(struct spi_device *spi)
{
 struct msi001_dev *dev;
 int ret;

 dev_dbg(&spi->dev, "\n");

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }

 dev->spi = spi;
 dev->f_tuner = bands[0].rangelow;
 v4l2_spi_subdev_init(&dev->sd, spi, &msi001_ops);


 v4l2_ctrl_handler_init(&dev->hdl, 5);
 dev->bandwidth_auto = v4l2_ctrl_new_std(&dev->hdl, &msi001_ctrl_ops,
   V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, 0, 1, 1, 1);
 dev->bandwidth = v4l2_ctrl_new_std(&dev->hdl, &msi001_ctrl_ops,
   V4L2_CID_RF_TUNER_BANDWIDTH, 200000, 8000000, 1, 200000);
 v4l2_ctrl_auto_cluster(2, &dev->bandwidth_auto, 0, 0);
 dev->lna_gain = v4l2_ctrl_new_std(&dev->hdl, &msi001_ctrl_ops,
   V4L2_CID_RF_TUNER_LNA_GAIN, 0, 1, 1, 1);
 dev->mixer_gain = v4l2_ctrl_new_std(&dev->hdl, &msi001_ctrl_ops,
   V4L2_CID_RF_TUNER_MIXER_GAIN, 0, 1, 1, 1);
 dev->if_gain = v4l2_ctrl_new_std(&dev->hdl, &msi001_ctrl_ops,
   V4L2_CID_RF_TUNER_IF_GAIN, 0, 59, 1, 0);
 if (dev->hdl.error) {
  ret = dev->hdl.error;
  dev_err(&spi->dev, "Could not initialize controls\n");

  goto err_ctrl_handler_free;
 }

 dev->sd.ctrl_handler = &dev->hdl;
 return 0;
err_ctrl_handler_free:
 v4l2_ctrl_handler_free(&dev->hdl);
 kfree(dev);
err:
 return ret;
}
