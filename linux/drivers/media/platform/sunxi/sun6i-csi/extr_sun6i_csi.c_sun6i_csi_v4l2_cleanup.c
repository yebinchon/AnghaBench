
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_csi {int media_dev; int ctrl_handler; int v4l2_dev; int video; int notifier; } ;


 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int sun6i_video_cleanup (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void sun6i_csi_v4l2_cleanup(struct sun6i_csi *csi)
{
 media_device_unregister(&csi->media_dev);
 v4l2_async_notifier_unregister(&csi->notifier);
 v4l2_async_notifier_cleanup(&csi->notifier);
 sun6i_video_cleanup(&csi->video);
 v4l2_device_unregister(&csi->v4l2_dev);
 v4l2_ctrl_handler_free(&csi->ctrl_handler);
 media_device_cleanup(&csi->media_dev);
}
