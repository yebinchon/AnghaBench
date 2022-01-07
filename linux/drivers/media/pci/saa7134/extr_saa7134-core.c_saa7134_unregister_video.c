
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int * radio_dev; int * vbi_dev; int * video_dev; } ;


 int saa7134_media_release (struct saa7134_dev*) ;
 int video_device_release (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void saa7134_unregister_video(struct saa7134_dev *dev)
{
 saa7134_media_release(dev);

 if (dev->video_dev) {
  if (video_is_registered(dev->video_dev))
   video_unregister_device(dev->video_dev);
  else
   video_device_release(dev->video_dev);
  dev->video_dev = ((void*)0);
 }
 if (dev->vbi_dev) {
  if (video_is_registered(dev->vbi_dev))
   video_unregister_device(dev->vbi_dev);
  else
   video_device_release(dev->vbi_dev);
  dev->vbi_dev = ((void*)0);
 }
 if (dev->radio_dev) {
  if (video_is_registered(dev->radio_dev))
   video_unregister_device(dev->radio_dev);
  else
   video_device_release(dev->radio_dev);
  dev->radio_dev = ((void*)0);
 }
}
