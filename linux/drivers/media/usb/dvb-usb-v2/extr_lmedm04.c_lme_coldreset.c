
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
typedef int data ;


 int info (char*) ;
 int lme2510_usb_talk (struct dvb_usb_device*,int*,int,int*,int) ;

__attribute__((used)) static void lme_coldreset(struct dvb_usb_device *d)
{
 u8 data[1] = {0};
 data[0] = 0x0a;
 info("FRM Firmware Cold Reset");

 lme2510_usb_talk(d, data, sizeof(data), data, sizeof(data));

 return;
}
