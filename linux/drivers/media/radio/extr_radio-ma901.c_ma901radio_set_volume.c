
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ma901radio_device {int* buffer; int volume; int usbdev; } ;


 int BUFFER_LENGTH ;
 int MA901_RADIO_SET_VOLUME ;
 int USB_TIMEOUT ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ma901radio_set_volume(struct ma901radio_device *radio, u16 vol_to_set)
{
 int retval;

 radio->buffer[0] = 0x0a;
 radio->buffer[1] = MA901_RADIO_SET_VOLUME;
 radio->buffer[2] = 0xc2;
 radio->buffer[3] = vol_to_set + 0x20;
 radio->buffer[4] = 0x00;
 radio->buffer[5] = 0x00;
 radio->buffer[6] = 0x00;
 radio->buffer[7] = 0x00;

 retval = usb_control_msg(radio->usbdev, usb_sndctrlpipe(radio->usbdev, 0),
    9, 0x21, 0x0300, 0,
    radio->buffer, BUFFER_LENGTH, USB_TIMEOUT);
 if (retval < 0)
  return retval;

 radio->volume = vol_to_set;
 return retval;
}
