
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int MAC_0_ADDR ;
 int vp7045_read_eeprom (struct dvb_usb_device*,int *,int,int ) ;

__attribute__((used)) static int vp7045_read_mac_addr(struct dvb_usb_device *d,u8 mac[6])
{
 return vp7045_read_eeprom(d,mac, 6, MAC_0_ADDR);
}
