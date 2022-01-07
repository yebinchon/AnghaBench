
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct peak_usb_device {int dummy; } ;


 int PCAN_USB_STARTUP_TIMEOUT ;
 int SJA1000_MODE_INIT ;
 int TASK_INTERRUPTIBLE ;
 int msecs_to_jiffies (int ) ;
 int pcan_usb_set_bus (struct peak_usb_device*,int ) ;
 int pcan_usb_set_sja1000 (struct peak_usb_device*,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static int pcan_usb_write_mode(struct peak_usb_device *dev, u8 onoff)
{
 int err;

 err = pcan_usb_set_bus(dev, onoff);
 if (err)
  return err;

 if (!onoff) {
  err = pcan_usb_set_sja1000(dev, SJA1000_MODE_INIT);
 } else {

  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(PCAN_USB_STARTUP_TIMEOUT));
 }

 return err;
}
