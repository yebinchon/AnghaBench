
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__* dev; struct dib0700_adapter_state* priv; } ;
struct TYPE_6__ {int * (* init ) (int *,int,int *) ;int (* i2c_enumeration ) (int *,int,int,int,int ) ;} ;
struct dib0700_adapter_state {TYPE_3__ dib8000_ops; } ;
struct TYPE_5__ {int * fe; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int ENODEV ;
 int dib8000_attach ;
 int * dib807x_dib8000_config ;
 int dvb_attach (int ,TYPE_3__*) ;
 int stub1 (int *,int,int,int,int ) ;
 int * stub2 (int *,int,int *) ;

__attribute__((used)) static int stk807xpvr_frontend_attach1(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib8000_attach, &state->dib8000_ops))
  return -ENODEV;


 state->dib8000_ops.i2c_enumeration(&adap->dev->i2c_adap, 1, 0x12, 0x82, 0);

 adap->fe_adap[0].fe = state->dib8000_ops.init(&adap->dev->i2c_adap, 0x82,
         &dib807x_dib8000_config[1]);

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
