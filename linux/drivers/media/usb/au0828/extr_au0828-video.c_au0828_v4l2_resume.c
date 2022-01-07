
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_bufs; int * urb; } ;
struct au0828_dev {scalar_t__ stream_state; TYPE_1__ isoc_ctl; int vbi_timeout; scalar_t__ vbi_timeout_running; int vid_timeout; scalar_t__ vid_timeout_running; } ;


 int GFP_ATOMIC ;
 int HZ ;
 scalar_t__ STREAM_ON ;
 int au0828_analog_stream_enable (struct au0828_dev*) ;
 int au0828_analog_stream_reset (struct au0828_dev*) ;
 int au0828_i2s_init (struct au0828_dev*) ;
 int au0828_init_tuner (struct au0828_dev*) ;
 int au0828_isocdbg (char*,int,int) ;
 int au0828_stream_interrupt (struct au0828_dev*) ;
 int au0828_uninit_isoc (struct au0828_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_info (char*) ;
 int usb_submit_urb (int ,int ) ;

void au0828_v4l2_resume(struct au0828_dev *dev)
{
 int i, rc;

 pr_info("restarting V4L2\n");

 if (dev->stream_state == STREAM_ON) {
  au0828_stream_interrupt(dev);
  au0828_init_tuner(dev);
 }

 if (dev->vid_timeout_running)
  mod_timer(&dev->vid_timeout, jiffies + (HZ / 10));
 if (dev->vbi_timeout_running)
  mod_timer(&dev->vbi_timeout, jiffies + (HZ / 10));


 au0828_i2s_init(dev);

 au0828_analog_stream_enable(dev);

 if (!(dev->stream_state == STREAM_ON)) {
  au0828_analog_stream_reset(dev);

  for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
   rc = usb_submit_urb(dev->isoc_ctl.urb[i], GFP_ATOMIC);
   if (rc) {
    au0828_isocdbg("submit of urb %i failed (error=%i)\n",
            i, rc);
    au0828_uninit_isoc(dev);
   }
  }
 }
}
