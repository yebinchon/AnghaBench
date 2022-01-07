
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct TYPE_6__ {int * (* init ) (int *,int,int *) ;int (* i2c_enumeration ) (int *,int,int,int,int ) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib8000_ops; } ;
struct TYPE_7__ {int i2c_adap; } ;
struct TYPE_5__ {int * fe; } ;


 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO4 ;
 int GPIO6 ;
 int GPIO7 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_3__*,int,int) ;
 int dib0700_set_gpio (TYPE_3__*,int ,int ,int) ;
 int dib8000_attach ;
 int * dib809x_dib8000_config ;
 int dvb_attach (int ,TYPE_2__*) ;
 int msleep (int) ;
 int stub1 (int *,int,int,int,int ) ;
 int * stub2 (int *,int,int *) ;

__attribute__((used)) static int stk809x_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib8000_attach, &state->dib8000_ops))
  return -ENODEV;

 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1);
 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO9, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO4, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO7, GPIO_OUT, 1);

 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);

 dib0700_ctrl_clock(adap->dev, 72, 1);

 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);
 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);

 state->dib8000_ops.i2c_enumeration(&adap->dev->i2c_adap, 1, 18, 0x80, 0);

 adap->fe_adap[0].fe = state->dib8000_ops.init(&adap->dev->i2c_adap, 0x80, &dib809x_dib8000_config[0]);

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
