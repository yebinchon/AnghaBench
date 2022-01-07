
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si4713_usb_device {int* buffer; int usbdev; } ;


 int BUFFER_LENGTH ;
 int EIO ;
 int SI4713_CTS ;
 int USB_RESP_TIMEOUT ;
 int USB_TIMEOUT ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static int si4713_send_startup_command(struct si4713_usb_device *radio)
{
 unsigned long until_jiffies = jiffies + usecs_to_jiffies(USB_RESP_TIMEOUT) + 1;
 u8 *buffer = radio->buffer;
 int retval;


 retval = usb_control_msg(radio->usbdev, usb_sndctrlpipe(radio->usbdev, 0),
     0x09, 0x21, 0x033f, 0, radio->buffer,
     BUFFER_LENGTH, USB_TIMEOUT);
 if (retval < 0)
  return retval;

 for (;;) {

  retval = usb_control_msg(radio->usbdev, usb_rcvctrlpipe(radio->usbdev, 0),
    0x01, 0xa1, 0x033f, 0, radio->buffer,
    BUFFER_LENGTH, USB_TIMEOUT);
  if (retval < 0)
   return retval;
  if (!radio->buffer[1]) {


   switch (buffer[1]) {
   case 0x32:
    if (radio->buffer[2] == 0)
     return 0;
    break;
   case 0x14:
   case 0x12:
    if (radio->buffer[2] & SI4713_CTS)
     return 0;
    break;
   case 0x06:
    if ((radio->buffer[2] & SI4713_CTS) && radio->buffer[9] == 0x08)
     return 0;
    break;
   default:
    return 0;
   }
  }
  if (time_is_before_jiffies(until_jiffies))
   return -EIO;
  msleep(3);
 }

 return retval;
}
