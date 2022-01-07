
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int EEPROM_MAC_START ;
 int EEPROM_MAC_TOTAL ;
 int ENODEV ;
 int memcpy (int *,int *,int) ;
 scalar_t__ technisat_usb2_eeprom_lrc_read (struct dvb_usb_device*,int ,int *,int,int) ;

__attribute__((used)) static int technisat_usb2_read_mac_address(struct dvb_usb_device *d,
  u8 mac[])
{
 u8 buf[EEPROM_MAC_TOTAL];

 if (technisat_usb2_eeprom_lrc_read(d, EEPROM_MAC_START,
    buf, EEPROM_MAC_TOTAL, 4) != 0)
  return -ENODEV;

 memcpy(mac, buf, 6);
 return 0;
}
