
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int dibusb_read_eeprom_byte (struct dvb_usb_device*,int,int*) ;

__attribute__((used)) static int nova_t_read_mac_address (struct dvb_usb_device *d, u8 mac[6])
{
 int i;
 u8 b;

 mac[0] = 0x00;
 mac[1] = 0x0d;
 mac[2] = 0xfe;


 for (i = 136; i < 139; i++) {
  dibusb_read_eeprom_byte(d,i, &b);

  mac[5 - (i - 136)] = b;
 }

 return 0;
}
