
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int WARM ;
 int dvbsky_gpio_ctrl (struct dvb_usb_device*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dvbsky_identify_state(struct dvb_usb_device *d, const char **name)
{
 dvbsky_gpio_ctrl(d, 0x04, 1);
 msleep(20);
 dvbsky_gpio_ctrl(d, 0x83, 0);
 dvbsky_gpio_ctrl(d, 0xc0, 1);
 msleep(100);
 dvbsky_gpio_ctrl(d, 0x83, 1);
 dvbsky_gpio_ctrl(d, 0xc0, 0);
 msleep(50);

 return WARM;
}
