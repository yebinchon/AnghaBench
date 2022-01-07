
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct si4713_usb_device {int* buffer; int usbdev; } ;


 int BUFFER_LENGTH ;
 int USB_TIMEOUT ;
 int memcpy (int*,char*,int) ;
 int memset (int*,int ,int) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int send_command(struct si4713_usb_device *radio, u8 *payload, char *data, int len)
{
 int retval;

 radio->buffer[0] = 0x3f;
 radio->buffer[1] = 0x06;

 memcpy(radio->buffer + 2, payload, 3);
 memcpy(radio->buffer + 5, data, len);
 memset(radio->buffer + 5 + len, 0, BUFFER_LENGTH - 5 - len);


 retval = usb_control_msg(radio->usbdev, usb_sndctrlpipe(radio->usbdev, 0),
     0x09, 0x21, 0x033f, 0, radio->buffer,
     BUFFER_LENGTH, USB_TIMEOUT);

 return retval < 0 ? retval : 0;
}
