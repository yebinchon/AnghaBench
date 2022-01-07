
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_bufs; int * urb; } ;
struct stk1160 {int v4l_lock; int udev; scalar_t__ sequence; int v4l2_dev; TYPE_1__ isoc_ctl; } ;


 int ENODEV ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ STK1160_DCTRL ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int stk1160_alloc_isoc (struct stk1160*) ;
 int stk1160_clear_queue (struct stk1160*) ;
 int stk1160_dbg (char*) ;
 int stk1160_err (char*,int,int) ;
 int stk1160_set_alternate (struct stk1160*) ;
 int stk1160_uninit_isoc (struct stk1160*) ;
 int stk1160_write_reg (struct stk1160*,scalar_t__,int) ;
 int usb_set_interface (int ,int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int stk1160_start_streaming(struct stk1160 *dev)
{
 bool new_pkt_size;
 int rc = 0;
 int i;


 if (!dev->udev)
  return -ENODEV;

 if (mutex_lock_interruptible(&dev->v4l_lock))
  return -ERESTARTSYS;





 new_pkt_size = stk1160_set_alternate(dev);






 if (!dev->isoc_ctl.num_bufs || new_pkt_size) {
  rc = stk1160_alloc_isoc(dev);
  if (rc < 0)
   goto out_stop_hw;
 }


 for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
  rc = usb_submit_urb(dev->isoc_ctl.urb[i], GFP_KERNEL);
  if (rc) {
   stk1160_err("cannot submit urb[%d] (%d)\n", i, rc);
   goto out_uninit;
  }
 }


 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 1);

 dev->sequence = 0;


 stk1160_write_reg(dev, STK1160_DCTRL, 0xb3);
 stk1160_write_reg(dev, STK1160_DCTRL+3, 0x00);

 stk1160_dbg("streaming started\n");

 mutex_unlock(&dev->v4l_lock);

 return 0;

out_uninit:
 stk1160_uninit_isoc(dev);
out_stop_hw:
 usb_set_interface(dev->udev, 0, 0);
 stk1160_clear_queue(dev);

 mutex_unlock(&dev->v4l_lock);

 return rc;
}
