
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe_adap; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (TYPE_4__*,int) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_7__ {TYPE_4__* fe; } ;
struct TYPE_5__ {struct dvb_usb_adapter* priv; } ;


 int stub1 (TYPE_4__*,int) ;

__attribute__((used)) static int ttusb2_ct3650_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;

 return adap->fe_adap[0].fe->ops.i2c_gate_ctrl(adap->fe_adap[0].fe, enable);
}
