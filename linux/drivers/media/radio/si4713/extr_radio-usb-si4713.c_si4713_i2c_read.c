
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si4713_usb_device {int* buffer; int usbdev; } ;


 int BUFFER_LENGTH ;
 int SI4713_CTS ;
 int USB_RESP_TIMEOUT ;
 int USB_TIMEOUT ;
 int jiffies ;
 int memcpy (char*,int*,int) ;
 int msleep (int) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static int si4713_i2c_read(struct si4713_usb_device *radio, char *data, int len)
{
 unsigned long until_jiffies = jiffies + usecs_to_jiffies(USB_RESP_TIMEOUT) + 1;
 int retval;


 for (;;) {
  retval = usb_control_msg(radio->usbdev,
     usb_rcvctrlpipe(radio->usbdev, 0),
     0x01, 0xa1, 0x033f, 0, radio->buffer,
     BUFFER_LENGTH, USB_TIMEOUT);
  if (retval < 0)
   return retval;
  if (radio->buffer[1] == 0 && (radio->buffer[2] & SI4713_CTS)) {
   memcpy(data, radio->buffer + 2, len);
   return 0;
  }
  if (time_is_before_jiffies(until_jiffies)) {

   data[0] = 0;
   return 0;
  }
  msleep(3);
 }
}
