
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8800_dev {int video_dev; int vbi_dev; int radio_dev; } ;


 int video_unregister_device (int *) ;

__attribute__((used)) static void cx8800_unregister_video(struct cx8800_dev *dev)
{
 video_unregister_device(&dev->radio_dev);
 video_unregister_device(&dev->vbi_dev);
 video_unregister_device(&dev->video_dev);
}
