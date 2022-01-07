
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_adapter {int dev; } ;


 int EIO ;
 int az6027_usb_out_op (int ,int,int,int,int *,int) ;

__attribute__((used)) static int az6027_frontend_tsbypass(struct dvb_usb_adapter *adap, int onoff)
{
 int ret;
 u8 req;
 u16 value;
 u16 index;
 int blen;


 req = 0xC7;
 value = onoff;
 index = 0;
 blen = 0;

 ret = az6027_usb_out_op(adap->dev, req, value, index, ((void*)0), blen);
 if (ret != 0)
  return -EIO;

 return 0;
}
