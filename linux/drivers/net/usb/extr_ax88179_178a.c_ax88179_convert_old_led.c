
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX_ACCESS_EEPROM ;
 int EINVAL ;
 int LED0_ACTIVE ;
 int LED1_ACTIVE ;
 int LED1_LINK_10 ;
 int LED1_LINK_100 ;
 int LED1_LINK_1000 ;
 int LED2_ACTIVE ;
 int LED2_LINK_10 ;
 int LED2_LINK_100 ;
 int LED2_LINK_1000 ;
 int LED_VALID ;
 scalar_t__ ax88179_read_cmd (struct usbnet*,int ,int,int,int,int*) ;

__attribute__((used)) static int ax88179_convert_old_led(struct usbnet *dev, u16 *ledvalue)
{
 u16 led;


 if (ax88179_read_cmd(dev, AX_ACCESS_EEPROM, 0x3C, 1, 2, &led) < 0)
  return -EINVAL;

 led >>= 8;
 switch (led) {
 case 0xFF:
  led = LED0_ACTIVE | LED1_LINK_10 | LED1_LINK_100 |
        LED1_LINK_1000 | LED2_ACTIVE | LED2_LINK_10 |
        LED2_LINK_100 | LED2_LINK_1000 | LED_VALID;
  break;
 case 0xFE:
  led = LED0_ACTIVE | LED1_LINK_1000 | LED2_LINK_100 | LED_VALID;
  break;
 case 0xFD:
  led = LED0_ACTIVE | LED1_LINK_1000 | LED2_LINK_100 |
        LED2_LINK_10 | LED_VALID;
  break;
 case 0xFC:
  led = LED0_ACTIVE | LED1_ACTIVE | LED1_LINK_1000 | LED2_ACTIVE |
        LED2_LINK_100 | LED2_LINK_10 | LED_VALID;
  break;
 default:
  led = LED0_ACTIVE | LED1_LINK_10 | LED1_LINK_100 |
        LED1_LINK_1000 | LED2_ACTIVE | LED2_LINK_10 |
        LED2_LINK_100 | LED2_LINK_1000 | LED_VALID;
  break;
 }

 *ledvalue = led;

 return 0;
}
