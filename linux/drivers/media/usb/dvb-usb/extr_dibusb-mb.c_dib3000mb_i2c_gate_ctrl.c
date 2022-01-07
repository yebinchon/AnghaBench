
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {struct dibusb_state* priv; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int (* tuner_pass_ctrl ) (struct dvb_frontend*,int,int ) ;} ;
struct dibusb_state {int tuner_addr; TYPE_2__ ops; } ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;


 int stub1 (struct dvb_frontend*,int,int ) ;

__attribute__((used)) static int dib3000mb_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dibusb_state *st = adap->priv;

 return st->ops.tuner_pass_ctrl(fe, enable, st->tuner_addr);
}
