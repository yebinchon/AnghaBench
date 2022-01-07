
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* mdev; int release; } ;
struct TYPE_8__ {int m2m_dev; int vfd; } ;
struct TYPE_9__ {int * ops; int bus_info; int model; int * dev; } ;
struct vicodec_dev {TYPE_1__ v4l2_dev; TYPE_4__ stateful_enc; TYPE_4__ stateful_dec; TYPE_4__ stateless_dec; TYPE_5__ mdev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_DECODER ;
 int MEDIA_ENT_F_PROC_VIDEO_ENCODER ;
 int kfree (struct vicodec_dev*) ;
 struct vicodec_dev* kzalloc (int,int ) ;
 int media_device_init (TYPE_5__*) ;
 int media_device_register (TYPE_5__*) ;
 int platform_set_drvdata (struct platform_device*,struct vicodec_dev*) ;
 scalar_t__ register_instance (struct vicodec_dev*,TYPE_4__*,char*,int) ;
 int strscpy (int ,char*,int) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*) ;
 int v4l2_m2m_register_media_controller (int ,int *,int ) ;
 int v4l2_m2m_release (int ) ;
 int v4l2_m2m_unregister_media_controller (int ) ;
 int vicodec_m2m_media_ops ;
 int vicodec_v4l2_dev_release ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int vicodec_probe(struct platform_device *pdev)
{
 struct vicodec_dev *dev;
 int ret;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret)
  goto free_dev;

 dev->v4l2_dev.release = vicodec_v4l2_dev_release;
 platform_set_drvdata(pdev, dev);

 if (register_instance(dev, &dev->stateful_enc,
         "stateful-encoder", 1))
  goto unreg_dev;

 if (register_instance(dev, &dev->stateful_dec,
         "stateful-decoder", 0))
  goto unreg_sf_enc;

 if (register_instance(dev, &dev->stateless_dec,
         "stateless-decoder", 0))
  goto unreg_sf_dec;
 return 0;
unreg_sf_dec:
 video_unregister_device(&dev->stateful_dec.vfd);
 v4l2_m2m_release(dev->stateful_dec.m2m_dev);
unreg_sf_enc:
 video_unregister_device(&dev->stateful_enc.vfd);
 v4l2_m2m_release(dev->stateful_enc.m2m_dev);
unreg_dev:
 v4l2_device_unregister(&dev->v4l2_dev);
free_dev:
 kfree(dev);

 return ret;
}
