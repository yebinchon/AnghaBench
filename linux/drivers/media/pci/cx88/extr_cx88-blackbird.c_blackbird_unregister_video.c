
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_dev {int mpeg_dev; } ;


 int video_unregister_device (int *) ;

__attribute__((used)) static void blackbird_unregister_video(struct cx8802_dev *dev)
{
 video_unregister_device(&dev->mpeg_dev);
}
