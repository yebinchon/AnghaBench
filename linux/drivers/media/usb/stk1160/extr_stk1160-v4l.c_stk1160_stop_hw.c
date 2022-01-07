
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int v4l2_dev; int udev; scalar_t__ alt; } ;


 scalar_t__ STK1160_DCTRL ;
 int s_stream ;
 int stk1160_dbg (char*,scalar_t__) ;
 int stk1160_write_reg (struct stk1160*,scalar_t__,int) ;
 int usb_set_interface (int ,int ,int ) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int video ;

__attribute__((used)) static void stk1160_stop_hw(struct stk1160 *dev)
{

 if (!dev->udev)
  return;


 dev->alt = 0;
 stk1160_dbg("setting alternate %d\n", dev->alt);
 usb_set_interface(dev->udev, 0, 0);


 stk1160_write_reg(dev, STK1160_DCTRL, 0x00);
 stk1160_write_reg(dev, STK1160_DCTRL+3, 0x00);


 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 0);
}
