
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx25821_dev {TYPE_1__* channels; } ;
struct TYPE_2__ {int hdl; int vdev; } ;


 int PCI_INT_MSK ;
 int cx_clear (int ,int) ;
 int v4l2_ctrl_handler_free (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

void cx25821_video_unregister(struct cx25821_dev *dev, int chan_num)
{
 cx_clear(PCI_INT_MSK, 1);

 if (video_is_registered(&dev->channels[chan_num].vdev)) {
  video_unregister_device(&dev->channels[chan_num].vdev);
  v4l2_ctrl_handler_free(&dev->channels[chan_num].hdl);
 }
}
