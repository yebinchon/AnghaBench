
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__* dev; struct dib0700_adapter_state* priv; } ;
struct TYPE_6__ {int * (* init ) (int *,int,int *) ;} ;
struct dib0700_adapter_state {TYPE_3__ dib7000p_ops; } ;
struct TYPE_5__ {int * fe; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int ENODEV ;
 int dib7000p_attach ;
 int dvb_attach (int ,TYPE_3__*) ;
 int * stk7070pd_dib7000p_config ;
 int * stub1 (int *,int,int *) ;

__attribute__((used)) static int stk7070pd_frontend_attach1(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib7000p_attach, &state->dib7000p_ops))
  return -ENODEV;

 adap->fe_adap[0].fe = state->dib7000p_ops.init(&adap->dev->i2c_adap, 0x82, &stk7070pd_dib7000p_config[1]);
 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
