
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_state {int is_dib7000pc; } ;
struct TYPE_6__ {scalar_t__ (* dib7000pc_detection ) (int *) ;int * (* init ) (int *,int,int *) ;int set_wbd_ref; } ;
struct dib0700_adapter_state {TYPE_2__ dib7000p_ops; } ;
struct TYPE_7__ {int i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_5__ {int * fe; } ;


 int ENODEV ;
 int GPIO10 ;
 int GPIO2 ;
 int GPIO6 ;
 int GPIO8 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_3__*,int,int) ;
 int dib0700_set_gpio (TYPE_3__*,int ,int ,int) ;
 int dib7000p_attach ;
 int dvb_attach (int ,TYPE_2__*) ;
 int dvb_detach (int ) ;
 int msleep (int) ;
 int pctv_340e_config ;
 scalar_t__ stub1 (int *) ;
 int * stub2 (int *,int,int *) ;

__attribute__((used)) static int pctv340e_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib7000p_attach, &state->dib7000p_ops))
  return -ENODEV;


 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0);
 msleep(50);
 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1);
 msleep(100);


 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);
 msleep(1);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);


 dib0700_set_gpio(adap->dev, GPIO8, GPIO_OUT, 1);


 dib0700_set_gpio(adap->dev, GPIO2, GPIO_OUT, 1);


 dib0700_ctrl_clock(adap->dev, 72, 1);

 msleep(500);

 if (state->dib7000p_ops.dib7000pc_detection(&adap->dev->i2c_adap) == 0) {

  dvb_detach(state->dib7000p_ops.set_wbd_ref);
  return -ENODEV;
 }

 adap->fe_adap[0].fe = state->dib7000p_ops.init(&adap->dev->i2c_adap, 0x12,
         &pctv_340e_config);
 st->is_dib7000pc = 1;

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
