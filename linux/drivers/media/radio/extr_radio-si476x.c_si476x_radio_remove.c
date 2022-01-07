
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_handler; } ;
struct si476x_radio {int debugfs; int v4l2dev; TYPE_1__ videodev; } ;
struct platform_device {int dummy; } ;


 int debugfs_remove_recursive (int ) ;
 struct si476x_radio* platform_get_drvdata (struct platform_device*) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (TYPE_1__*) ;

__attribute__((used)) static int si476x_radio_remove(struct platform_device *pdev)
{
 struct si476x_radio *radio = platform_get_drvdata(pdev);

 v4l2_ctrl_handler_free(radio->videodev.ctrl_handler);
 video_unregister_device(&radio->videodev);
 v4l2_device_unregister(&radio->v4l2dev);
 debugfs_remove_recursive(radio->debugfs);

 return 0;
}
