
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int TUNER_REG_READ ;
 int vp7045_usb_op (struct dvb_usb_device*,int ,int *,int,int *,int,int) ;

u8 vp7045_read_reg(struct dvb_usb_device *d, u8 reg)
{
 u8 obuf[2] = { 0 },v;
 obuf[1] = reg;

 vp7045_usb_op(d,TUNER_REG_READ,obuf,2,&v,1,30);

 return v;
}
