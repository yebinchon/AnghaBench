
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_layer {int video_dev; } ;
struct vpbe_display {struct vpbe_layer** dev; struct vpbe_device* vpbe_dev; } ;
struct TYPE_2__ {int (* deinitialize ) (int *,struct vpbe_device*) ;} ;
struct vpbe_device {TYPE_1__ ops; int v4l2_dev; } ;
struct platform_device {int dev; } ;


 int VPBE_DISPLAY_MAX_DEVICES ;
 int debug ;
 int kfree (struct vpbe_layer*) ;
 struct vpbe_display* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *,struct vpbe_device*) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int vpbe_display_remove(struct platform_device *pdev)
{
 struct vpbe_layer *vpbe_display_layer;
 struct vpbe_display *disp_dev = platform_get_drvdata(pdev);
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 int i;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "vpbe_display_remove\n");


 if (vpbe_dev->ops.deinitialize)
  vpbe_dev->ops.deinitialize(&pdev->dev, vpbe_dev);

 for (i = 0; i < VPBE_DISPLAY_MAX_DEVICES; i++) {

  vpbe_display_layer = disp_dev->dev[i];

  video_unregister_device(&vpbe_display_layer->video_dev);

 }
 for (i = 0; i < VPBE_DISPLAY_MAX_DEVICES; i++) {
  kfree(disp_dev->dev[i]);
  disp_dev->dev[i] = ((void*)0);
 }

 return 0;
}
