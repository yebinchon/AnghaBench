
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * queue; } ;
struct vpbe_layer {TYPE_2__ video_dev; struct vpbe_display* disp_dev; int buffer_queue; } ;
struct vpbe_display {TYPE_1__* vpbe_dev; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int v4l2_dev; } ;


 int ENODEV ;
 int VFL_TYPE_GRABBER ;
 int platform_set_drvdata (struct platform_device*,struct vpbe_display*) ;
 int v4l2_info (int *,char*,...) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct vpbe_layer*) ;

__attribute__((used)) static int register_device(struct vpbe_layer *vpbe_display_layer,
      struct vpbe_display *disp_dev,
      struct platform_device *pdev)
{
 int err;

 v4l2_info(&disp_dev->vpbe_dev->v4l2_dev,
    "Trying to register VPBE display device.\n");
 v4l2_info(&disp_dev->vpbe_dev->v4l2_dev,
    "layer=%p,layer->video_dev=%p\n",
    vpbe_display_layer,
    &vpbe_display_layer->video_dev);

 vpbe_display_layer->video_dev.queue = &vpbe_display_layer->buffer_queue;
 err = video_register_device(&vpbe_display_layer->video_dev,
        VFL_TYPE_GRABBER,
        -1);
 if (err)
  return -ENODEV;

 vpbe_display_layer->disp_dev = disp_dev;

 platform_set_drvdata(pdev, disp_dev);
 video_set_drvdata(&vpbe_display_layer->video_dev,
     vpbe_display_layer);

 return 0;
}
