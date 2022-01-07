
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int SET_TUNER_POWER ;
 int vp7045_usb_op (struct dvb_usb_device*,int ,int*,int,int *,int ,int) ;

__attribute__((used)) static int vp7045_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 v = onoff;
 return vp7045_usb_op(d,SET_TUNER_POWER,&v,1,((void*)0),0,150);
}
