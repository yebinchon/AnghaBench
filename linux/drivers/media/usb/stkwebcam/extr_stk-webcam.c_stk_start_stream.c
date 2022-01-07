
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stk_camera {int urbs_used; TYPE_1__* isobufs; int udev; } ;
struct TYPE_2__ {scalar_t__ urb; } ;


 int EFAULT ;
 int ENODEV ;
 int GFP_KERNEL ;
 int MAX_ISO_BUFS ;
 int atomic_inc (int *) ;
 int is_initialised (struct stk_camera*) ;
 int is_memallocd (struct stk_camera*) ;
 int is_present (struct stk_camera*) ;
 int pr_err (char*) ;
 int set_streaming (struct stk_camera*) ;
 int stk_camera_read_reg (struct stk_camera*,int,int*) ;
 int stk_camera_write_reg (struct stk_camera*,int,int) ;
 scalar_t__ stk_sensor_wakeup (struct stk_camera*) ;
 int usb_set_interface (int ,int ,int) ;
 int usb_submit_urb (scalar_t__,int ) ;

__attribute__((used)) static int stk_start_stream(struct stk_camera *dev)
{
 u8 value;
 int i, ret;
 u8 value_116, value_117;


 if (!is_present(dev))
  return -ENODEV;
 if (!is_memallocd(dev) || !is_initialised(dev)) {
  pr_err("FIXME: Buffers are not allocated\n");
  return -EFAULT;
 }
 ret = usb_set_interface(dev->udev, 0, 5);

 if (ret < 0)
  pr_err("usb_set_interface failed !\n");
 if (stk_sensor_wakeup(dev))
  pr_err("error awaking the sensor\n");

 stk_camera_read_reg(dev, 0x0116, &value_116);
 stk_camera_read_reg(dev, 0x0117, &value_117);

 stk_camera_write_reg(dev, 0x0116, 0x0000);
 stk_camera_write_reg(dev, 0x0117, 0x0000);

 stk_camera_read_reg(dev, 0x0100, &value);
 stk_camera_write_reg(dev, 0x0100, value | 0x80);

 stk_camera_write_reg(dev, 0x0116, value_116);
 stk_camera_write_reg(dev, 0x0117, value_117);
 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (dev->isobufs[i].urb) {
   ret = usb_submit_urb(dev->isobufs[i].urb, GFP_KERNEL);
   atomic_inc(&dev->urbs_used);
   if (ret)
    return ret;
  }
 }
 set_streaming(dev);
 return 0;
}
