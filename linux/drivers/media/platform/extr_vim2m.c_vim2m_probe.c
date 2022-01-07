
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* mdev; } ;
struct video_device {int num; TYPE_1__* v4l2_dev; int * lock; } ;
struct TYPE_8__ {int * ops; int bus_info; int model; int * dev; } ;
struct vim2m_dev {TYPE_1__ v4l2_dev; struct video_device vfd; int m2m_dev; TYPE_5__ mdev; int dev_mutex; int num_inst; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 int PTR_ERR (int ) ;
 int VFL_TYPE_GRABBER ;
 int atomic_set (int *,int ) ;
 int kfree (struct vim2m_dev*) ;
 struct vim2m_dev* kzalloc (int,int ) ;
 int m2m_media_ops ;
 int m2m_ops ;
 int media_device_init (TYPE_5__*) ;
 int media_device_register (TYPE_5__*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct vim2m_dev*) ;
 int strscpy (int ,char*,int) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*) ;
 int v4l2_info (TYPE_1__*,char*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_register_media_controller (int ,struct video_device*,int ) ;
 int v4l2_m2m_unregister_media_controller (int ) ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct vim2m_dev*) ;
 int video_unregister_device (struct video_device*) ;
 struct video_device vim2m_videodev ;

__attribute__((used)) static int vim2m_probe(struct platform_device *pdev)
{
 struct vim2m_dev *dev;
 struct video_device *vfd;
 int ret;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret)
  goto error_free;

 atomic_set(&dev->num_inst, 0);
 mutex_init(&dev->dev_mutex);

 dev->vfd = vim2m_videodev;
 vfd = &dev->vfd;
 vfd->lock = &dev->dev_mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  v4l2_err(&dev->v4l2_dev, "Failed to register video device\n");
  goto error_v4l2;
 }

 video_set_drvdata(vfd, dev);
 v4l2_info(&dev->v4l2_dev,
    "Device registered as /dev/video%d\n", vfd->num);

 platform_set_drvdata(pdev, dev);

 dev->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(dev->m2m_dev)) {
  v4l2_err(&dev->v4l2_dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(dev->m2m_dev);
  goto error_dev;
 }
 return 0;





error_dev:
 video_unregister_device(&dev->vfd);

 return ret;
error_v4l2:
 v4l2_device_unregister(&dev->v4l2_dev);
error_free:
 kfree(dev);

 return ret;
}
