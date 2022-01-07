
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_4__* dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_state {int* mt2060_if1; int is_dib7000pc; } ;
struct TYPE_7__ {int * (* init ) (int *,int,int *) ;scalar_t__ (* dib7000pc_detection ) (int *) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib7000p_ops; } ;
struct TYPE_8__ {int i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_6__ {int * fe; } ;


 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO6 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_4__*,int,int) ;
 int dib0700_set_gpio (TYPE_4__*,int ,int ,int) ;
 int dib7000m_attach ;
 int dib7000p_attach ;
 int * dvb_attach (int ,TYPE_2__*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int msleep (int) ;
 int stk7700p_dib7000m_config ;
 int stk7700p_dib7000p_config ;
 scalar_t__ stub1 (int *) ;
 int * stub2 (int *,int,int *) ;

__attribute__((used)) static int stk7700p_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib7000p_attach, &state->dib7000p_ops))
  return -ENODEV;



 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);
 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0); msleep(50);

 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1); msleep(10);
 dib0700_set_gpio(adap->dev, GPIO9, GPIO_OUT, 1);

 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0); msleep(10);
 dib0700_ctrl_clock(adap->dev, 72, 1);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1); msleep(100);

 dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);

 st->mt2060_if1[0] = 1220;

 if (state->dib7000p_ops.dib7000pc_detection(&adap->dev->i2c_adap)) {
  adap->fe_adap[0].fe = state->dib7000p_ops.init(&adap->dev->i2c_adap, 18, &stk7700p_dib7000p_config);
  st->is_dib7000pc = 1;
 } else {
  memset(&state->dib7000p_ops, 0, sizeof(state->dib7000p_ops));
  adap->fe_adap[0].fe = dvb_attach(dib7000m_attach, &adap->dev->i2c_adap, 18, &stk7700p_dib7000m_config);
 }

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
