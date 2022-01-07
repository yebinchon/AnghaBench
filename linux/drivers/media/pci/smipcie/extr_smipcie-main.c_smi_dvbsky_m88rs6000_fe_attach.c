
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smi_port {scalar_t__ idx; TYPE_3__* fe; struct i2c_client* i2c_client_tuner; struct smi_dev* dev; } ;
struct smi_dev {struct i2c_adapter* i2c_bus; } ;
struct m88rs6000t_config {TYPE_3__* fe; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; struct m88rs6000t_config* platform_data; int type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int get_rf_strength; } ;
struct TYPE_6__ {TYPE_1__ tuner_ops; int read_signal_strength; } ;
struct TYPE_7__ {TYPE_2__ ops; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 TYPE_3__* dvb_attach (int ,int *,struct i2c_adapter*,struct i2c_adapter**) ;
 int dvb_frontend_detach (TYPE_3__*) ;
 int m88ds3103_attach ;
 int memset (struct i2c_board_info*,int ,int) ;
 struct i2c_client* smi_add_i2c_client (struct i2c_adapter*,struct i2c_board_info*) ;
 int smi_dvbsky_m88rs6000_cfg ;
 int strscpy (int ,char*,int ) ;

__attribute__((used)) static int smi_dvbsky_m88rs6000_fe_attach(struct smi_port *port)
{
 int ret = 0;
 struct smi_dev *dev = port->dev;
 struct i2c_adapter *i2c;

 struct i2c_adapter *tuner_i2c_adapter;
 struct i2c_client *tuner_client;
 struct i2c_board_info tuner_info;
 struct m88rs6000t_config m88rs6000t_config;

 memset(&tuner_info, 0, sizeof(struct i2c_board_info));
 i2c = (port->idx == 0) ? &dev->i2c_bus[0] : &dev->i2c_bus[1];


 port->fe = dvb_attach(m88ds3103_attach,
   &smi_dvbsky_m88rs6000_cfg, i2c, &tuner_i2c_adapter);
 if (!port->fe) {
  ret = -ENODEV;
  return ret;
 }

 m88rs6000t_config.fe = port->fe;
 strscpy(tuner_info.type, "m88rs6000t", I2C_NAME_SIZE);
 tuner_info.addr = 0x21;
 tuner_info.platform_data = &m88rs6000t_config;
 tuner_client = smi_add_i2c_client(tuner_i2c_adapter, &tuner_info);
 if (!tuner_client) {
  ret = -ENODEV;
  goto err_tuner_i2c_device;
 }


 port->fe->ops.read_signal_strength =
   port->fe->ops.tuner_ops.get_rf_strength;

 port->i2c_client_tuner = tuner_client;
 return ret;

err_tuner_i2c_device:
 dvb_frontend_detach(port->fe);
 return ret;
}
