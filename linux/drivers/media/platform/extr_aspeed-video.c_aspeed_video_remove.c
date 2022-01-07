
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int dma; int virt; } ;
struct aspeed_video {TYPE_1__ jpeg; int dev; int ctrl_handler; int queue; int vdev; int eclk; int vclk; } ;


 int VE_JPEG_HEADER_SIZE ;
 int aspeed_video_off (struct aspeed_video*) ;
 int clk_unprepare (int ) ;
 struct v4l2_device* dev_get_drvdata (struct device*) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int of_reserved_mem_device_release (struct device*) ;
 struct aspeed_video* to_aspeed_video (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int vb2_queue_release (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int aspeed_video_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct v4l2_device *v4l2_dev = dev_get_drvdata(dev);
 struct aspeed_video *video = to_aspeed_video(v4l2_dev);

 aspeed_video_off(video);

 clk_unprepare(video->vclk);
 clk_unprepare(video->eclk);

 video_unregister_device(&video->vdev);

 vb2_queue_release(&video->queue);

 v4l2_ctrl_handler_free(&video->ctrl_handler);

 v4l2_device_unregister(v4l2_dev);

 dma_free_coherent(video->dev, VE_JPEG_HEADER_SIZE, video->jpeg.virt,
     video->jpeg.dma);

 of_reserved_mem_device_release(dev);

 return 0;
}
