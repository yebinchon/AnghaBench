
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int v4l2_dev; } ;
struct pxa_camera_dev {int mlock; int * sensor; int vdev; int * mclk_clk; scalar_t__ base; } ;


 scalar_t__ CICR0 ;
 int __raw_writel (int,scalar_t__) ;
 int dev_info (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int pxa_camera_destroy_formats (struct pxa_camera_dev*) ;
 int pxa_dma_stop_channels (struct pxa_camera_dev*) ;
 int v4l2_clk_unregister (int *) ;
 struct pxa_camera_dev* v4l2_dev_to_pcdev (int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void pxa_camera_sensor_unbind(struct v4l2_async_notifier *notifier,
       struct v4l2_subdev *subdev,
       struct v4l2_async_subdev *asd)
{
 struct pxa_camera_dev *pcdev = v4l2_dev_to_pcdev(notifier->v4l2_dev);

 mutex_lock(&pcdev->mlock);
 dev_info(pcdev_to_dev(pcdev),
   "PXA Camera driver detached from camera %s\n",
   subdev->name);


 __raw_writel(0x3ff, pcdev->base + CICR0);


 pxa_dma_stop_channels(pcdev);

 pxa_camera_destroy_formats(pcdev);

 if (pcdev->mclk_clk) {
  v4l2_clk_unregister(pcdev->mclk_clk);
  pcdev->mclk_clk = ((void*)0);
 }

 video_unregister_device(&pcdev->vdev);
 pcdev->sensor = ((void*)0);

 mutex_unlock(&pcdev->mlock);
}
