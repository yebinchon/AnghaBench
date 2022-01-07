
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct i2c_client {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {size_t id; TYPE_4__** fe; } ;
struct af9015_state {scalar_t__* tuner_sleep; scalar_t__* tuner_init; TYPE_1__* af9013_pdata; int * mt2060_if1; struct i2c_client** demod_i2c_client; } ;
struct TYPE_6__ {scalar_t__ sleep; scalar_t__ init; } ;
struct TYPE_7__ {TYPE_2__ tuner_ops; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int tuner; struct i2c_adapter* (* get_i2c_adapter ) (struct i2c_client*) ;} ;
 int DVB_PLL_TDA665X ;
 int ENODEV ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 int af9015_mc44s803_config ;
 int af9015_mt2060_config ;
 int af9015_mxl5003_config ;
 int af9015_mxl5005_config ;
 int af9015_mxl5007t_config ;
 int af9015_qt1010_config ;
 int af9015_tda18218_config ;
 int af9015_tda18271_config ;
 scalar_t__ af9015_tuner_init ;
 scalar_t__ af9015_tuner_sleep ;
 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,size_t) ;
 int dev_err (int *,char*,int) ;
 int * dvb_attach (int ,TYPE_4__*,int,int,...) ;
 int dvb_pll_attach ;
 int mc44s803_attach ;
 int mt2060_attach ;
 int mxl5005s_attach ;
 int mxl5007t_attach ;
 int qt1010_attach ;
 struct i2c_adapter* stub1 (struct i2c_client*) ;
 int tda18218_attach ;
 int tda18271_attach ;

__attribute__((used)) static int af9015_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 struct i2c_client *client;
 struct i2c_adapter *adapter;
 int ret;

 dev_dbg(&intf->dev, "adap id %u\n", adap->id);

 client = state->demod_i2c_client[adap->id];
 adapter = state->af9013_pdata[adap->id].get_i2c_adapter(client);

 switch (state->af9013_pdata[adap->id].tuner) {
 case 138:
 case 137:
  ret = dvb_attach(mt2060_attach, adap->fe[0], adapter,
     &af9015_mt2060_config,
     state->mt2060_if1[adap->id]) == ((void*)0) ? -ENODEV : 0;
  break;
 case 132:
 case 131:
  ret = dvb_attach(qt1010_attach, adap->fe[0], adapter,
     &af9015_qt1010_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 129:
  ret = dvb_attach(tda18271_attach, adap->fe[0], 0x60, adapter,
     &af9015_tda18271_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 130:
  ret = dvb_attach(tda18218_attach, adap->fe[0], adapter,
     &af9015_tda18218_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 136:
  ret = dvb_attach(mxl5005s_attach, adap->fe[0], adapter,
     &af9015_mxl5003_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 135:
 case 134:
  ret = dvb_attach(mxl5005s_attach, adap->fe[0], adapter,
     &af9015_mxl5005_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 140:
  ret = dvb_attach(dvb_pll_attach, adap->fe[0], 0x60, adapter,
     DVB_PLL_TDA665X) == ((void*)0) ? -ENODEV : 0;
  break;
 case 139:
  ret = dvb_attach(mc44s803_attach, adap->fe[0], adapter,
     &af9015_mc44s803_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 133:
  ret = dvb_attach(mxl5007t_attach, adap->fe[0], adapter,
     0x60, &af9015_mxl5007t_config) == ((void*)0) ? -ENODEV : 0;
  break;
 case 128:
 default:
  dev_err(&intf->dev, "unknown tuner, tuner id %02x\n",
   state->af9013_pdata[adap->id].tuner);
  ret = -ENODEV;
 }

 if (adap->fe[0]->ops.tuner_ops.init) {
  state->tuner_init[adap->id] =
   adap->fe[0]->ops.tuner_ops.init;
  adap->fe[0]->ops.tuner_ops.init = af9015_tuner_init;
 }

 if (adap->fe[0]->ops.tuner_ops.sleep) {
  state->tuner_sleep[adap->id] =
   adap->fe[0]->ops.tuner_ops.sleep;
  adap->fe[0]->ops.tuner_ops.sleep = af9015_tuner_sleep;
 }

 return ret;
}
