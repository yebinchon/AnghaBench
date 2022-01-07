
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_v4l2 {int ref; int v4l2_dev; int ctrl_handler; int vdev; int vbi_dev; int radio_dev; } ;
struct em28xx {int ref; int lock; TYPE_1__* intf; int has_video; scalar_t__ is_audio_only; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int dev; } ;


 int EM28XX_ANALOG_MODE ;
 int dev_info (int *,char*,...) ;
 int em28xx_free_device ;
 int em28xx_free_v4l2 ;
 int em28xx_uninit_usb_xfer (struct em28xx*,int ) ;
 int em28xx_v4l2_media_release (struct em28xx*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_device_node_name (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int em28xx_v4l2_fini(struct em28xx *dev)
{
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (dev->is_audio_only) {

  return 0;
 }

 if (!dev->has_video) {

  return 0;
 }

 if (!v4l2)
  return 0;

 dev_info(&dev->intf->dev, "Closing video extension\n");

 mutex_lock(&dev->lock);

 v4l2_device_disconnect(&v4l2->v4l2_dev);

 em28xx_uninit_usb_xfer(dev, EM28XX_ANALOG_MODE);

 em28xx_v4l2_media_release(dev);

 if (video_is_registered(&v4l2->radio_dev)) {
  dev_info(&dev->intf->dev, "V4L2 device %s deregistered\n",
    video_device_node_name(&v4l2->radio_dev));
  video_unregister_device(&v4l2->radio_dev);
 }
 if (video_is_registered(&v4l2->vbi_dev)) {
  dev_info(&dev->intf->dev, "V4L2 device %s deregistered\n",
    video_device_node_name(&v4l2->vbi_dev));
  video_unregister_device(&v4l2->vbi_dev);
 }
 if (video_is_registered(&v4l2->vdev)) {
  dev_info(&dev->intf->dev, "V4L2 device %s deregistered\n",
    video_device_node_name(&v4l2->vdev));
  video_unregister_device(&v4l2->vdev);
 }

 v4l2_ctrl_handler_free(&v4l2->ctrl_handler);
 v4l2_device_unregister(&v4l2->v4l2_dev);

 kref_put(&v4l2->ref, em28xx_free_v4l2);

 mutex_unlock(&dev->lock);

 kref_put(&dev->ref, em28xx_free_device);

 return 0;
}
