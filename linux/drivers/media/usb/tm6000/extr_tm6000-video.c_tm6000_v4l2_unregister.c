
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int radio_dev; int vfd; } ;


 int tm6000_free_urb_buffers (struct tm6000_core*) ;
 int video_unregister_device (int *) ;

int tm6000_v4l2_unregister(struct tm6000_core *dev)
{
 video_unregister_device(&dev->vfd);


 tm6000_free_urb_buffers(dev);

 video_unregister_device(&dev->radio_dev);
 return 0;
}
