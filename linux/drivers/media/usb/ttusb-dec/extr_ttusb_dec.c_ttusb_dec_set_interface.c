
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb_dec {int interface; int udev; } ;
typedef enum ttusb_dec_interface { ____Placeholder_ttusb_dec_interface } ttusb_dec_interface ;
typedef int b ;





 int ttusb_dec_send_command (struct ttusb_dec*,int,int,int*,int *,int *) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int ttusb_dec_set_interface(struct ttusb_dec *dec,
       enum ttusb_dec_interface interface)
{
 int result = 0;
 u8 b[] = { 0x05 };

 if (interface != dec->interface) {
  switch (interface) {
  case 129:
   result = usb_set_interface(dec->udev, 0, 0);
   break;
  case 130:
   result = ttusb_dec_send_command(dec, 0x80, sizeof(b),
       b, ((void*)0), ((void*)0));
   if (result)
    return result;
   result = usb_set_interface(dec->udev, 0, 8);
   break;
  case 128:
   result = usb_set_interface(dec->udev, 0, 1);
   break;
  }

  if (result)
   return result;

  dec->interface = interface;
 }

 return 0;
}
