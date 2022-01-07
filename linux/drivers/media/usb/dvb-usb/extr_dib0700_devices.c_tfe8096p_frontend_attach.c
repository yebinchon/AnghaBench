
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_state {int fw_use_new_i2c_api; } ;
struct TYPE_7__ {int * (* init ) (int *,int,int *) ;int (* i2c_enumeration ) (int *,int,int,int,int) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib8000_ops; } ;
struct TYPE_8__ {int i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_6__ {int * fe; } ;


 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO4 ;
 int GPIO6 ;
 int GPIO7 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_3__*,int,int) ;
 int dib0700_get_version (TYPE_3__*,int *,int *,int*,int *) ;
 int dib0700_set_gpio (TYPE_3__*,int ,int ,int) ;
 int dib8000_attach ;
 int dvb_attach (int ,TYPE_2__*) ;
 int msleep (int) ;
 int stub1 (int *,int,int,int,int) ;
 int * stub2 (int *,int,int *) ;
 int tfe8096p_dib8000_config ;

__attribute__((used)) static int tfe8096p_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;
 u32 fw_version;
 struct dib0700_adapter_state *state = adap->priv;

 if (!dvb_attach(dib8000_attach, &state->dib8000_ops))
  return -ENODEV;

 dib0700_get_version(adap->dev, ((void*)0), ((void*)0), &fw_version, ((void*)0));
 if (fw_version >= 0x10200)
  st->fw_use_new_i2c_api = 1;

 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1);
 msleep(20);
 dib0700_set_gpio(adap->dev, GPIO9, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO4, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO7, GPIO_OUT, 1);

 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);

 dib0700_ctrl_clock(adap->dev, 72, 1);

 msleep(20);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);
 msleep(20);
 dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);

 state->dib8000_ops.i2c_enumeration(&adap->dev->i2c_adap, 1, 0x10, 0x80, 1);

 adap->fe_adap[0].fe = state->dib8000_ops.init(&adap->dev->i2c_adap,
          0x80, &tfe8096p_dib8000_config);

 return adap->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}
