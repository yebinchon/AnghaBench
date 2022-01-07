
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vub300_mmc_host {TYPE_1__* udev; } ;
struct mmc_ios {int clock; } ;
struct TYPE_3__ {int dev; } ;


 int HZ ;
 int SET_CLOCK_SPEED ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int,int) ;
 int usb_control_msg (TYPE_1__*,int ,int ,int,int,int,int*,int,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static void __set_clock_speed(struct vub300_mmc_host *vub300, u8 buf[8],
         struct mmc_ios *ios)
{
 int buf_array_size = 8;
 int retval;
 u32 kHzClock;
 if (ios->clock >= 48000000)
  kHzClock = 48000;
 else if (ios->clock >= 24000000)
  kHzClock = 24000;
 else if (ios->clock >= 20000000)
  kHzClock = 20000;
 else if (ios->clock >= 15000000)
  kHzClock = 15000;
 else if (ios->clock >= 200000)
  kHzClock = 200;
 else
  kHzClock = 0;
 {
  int i;
  u64 c = kHzClock;
  for (i = 0; i < buf_array_size; i++) {
   buf[i] = c;
   c >>= 8;
  }
 }
 retval =
  usb_control_msg(vub300->udev, usb_sndctrlpipe(vub300->udev, 0),
    SET_CLOCK_SPEED,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x00, 0x00, buf, buf_array_size, HZ);
 if (retval != 8) {
  dev_err(&vub300->udev->dev, "SET_CLOCK_SPEED"
   " %dkHz failed with retval=%d\n", kHzClock, retval);
 } else {
  dev_dbg(&vub300->udev->dev, "SET_CLOCK_SPEED"
   " %dkHz\n", kHzClock);
 }
}
