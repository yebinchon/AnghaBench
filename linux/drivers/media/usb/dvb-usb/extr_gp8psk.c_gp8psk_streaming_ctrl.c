
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; } ;


 int ARM_TRANSFER ;
 int gp8psk_usb_out_op (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 return gp8psk_usb_out_op(adap->dev, ARM_TRANSFER, onoff, 0 , ((void*)0), 0);
}
