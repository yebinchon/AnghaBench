
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; int dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_adapter_state {int frontend_firmware; } ;
struct TYPE_2__ {int fe; } ;


 int CONFIG_DVB_DIB9000 ;
 int DIBX000_I2C_INTERFACE_GPIO_1_2 ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 int dib0090_fw_register ;
 scalar_t__ dib01x0_pmu_update (struct i2c_adapter*,int*,int) ;
 int dib0700_set_i2c_speed (int ,int) ;
 scalar_t__ dib9000_firmware_post_pll_init (int ) ;
 struct i2c_adapter* dib9000_get_i2c_master (int ,int ,int ) ;
 struct i2c_adapter* dib9000_get_tuner_interface (int ) ;
 int dib9090_dib0090_config ;
 int * dvb_attach (int ,int ,struct i2c_adapter*,int *) ;
 int release_firmware (int ) ;

__attribute__((used)) static int dib9090_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *state = adap->priv;
 struct i2c_adapter *i2c = dib9000_get_tuner_interface(adap->fe_adap[0].fe);
 u16 data_dib190[10] = {
  1, 0x1374,
  2, 0x01a2,
  7, 0x0020,
  0, 0x00ef,
  8, 0x0486,
 };

 if (!IS_ENABLED(CONFIG_DVB_DIB9000))
  return -ENODEV;
 if (dvb_attach(dib0090_fw_register, adap->fe_adap[0].fe, i2c, &dib9090_dib0090_config) == ((void*)0))
  return -ENODEV;
 i2c = dib9000_get_i2c_master(adap->fe_adap[0].fe, DIBX000_I2C_INTERFACE_GPIO_1_2, 0);
 if (!i2c)
  return -ENODEV;
 if (dib01x0_pmu_update(i2c, data_dib190, 10) != 0)
  return -ENODEV;
 dib0700_set_i2c_speed(adap->dev, 1500);
 if (dib9000_firmware_post_pll_init(adap->fe_adap[0].fe) < 0)
  return -ENODEV;
 release_firmware(state->frontend_firmware);
 return 0;
}
