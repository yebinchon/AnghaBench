
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {scalar_t__ idx; struct i2c_client* i2c_client_tuner; struct i2c_client* i2c_client_demod; int **** fe; struct smi_dev* dev; } ;
struct smi_dev {struct i2c_adapter* i2c_bus; } ;
struct si2168_config {int addr; int if_port; struct si2168_config* platform_data; int type; int **** fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2157_config {int addr; int if_port; struct si2157_config* platform_data; int type; int **** fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; int if_port; struct i2c_board_info* platform_data; int type; int **** fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef int si2168_config ;
typedef int si2157_config ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 int SI2168_TS_PARALLEL ;
 int memset (struct si2168_config*,int ,int) ;
 struct i2c_client* smi_add_i2c_client (struct i2c_adapter*,struct si2168_config*) ;
 int smi_del_i2c_client (struct i2c_client*) ;
 int strscpy (int ,char*,int ) ;

__attribute__((used)) static int smi_dvbsky_sit2_fe_attach(struct smi_port *port)
{
 int ret = 0;
 struct smi_dev *dev = port->dev;
 struct i2c_adapter *i2c;
 struct i2c_adapter *tuner_i2c_adapter;
 struct i2c_client *client_tuner, *client_demod;
 struct i2c_board_info client_info;
 struct si2168_config si2168_config;
 struct si2157_config si2157_config;


 i2c = (port->idx == 0) ? &dev->i2c_bus[0] : &dev->i2c_bus[1];


 memset(&si2168_config, 0, sizeof(si2168_config));
 si2168_config.i2c_adapter = &tuner_i2c_adapter;
 si2168_config.fe = &port->fe;
 si2168_config.ts_mode = SI2168_TS_PARALLEL;

 memset(&client_info, 0, sizeof(struct i2c_board_info));
 strscpy(client_info.type, "si2168", I2C_NAME_SIZE);
 client_info.addr = 0x64;
 client_info.platform_data = &si2168_config;

 client_demod = smi_add_i2c_client(i2c, &client_info);
 if (!client_demod) {
  ret = -ENODEV;
  return ret;
 }
 port->i2c_client_demod = client_demod;


 memset(&si2157_config, 0, sizeof(si2157_config));
 si2157_config.fe = port->fe;
 si2157_config.if_port = 1;

 memset(&client_info, 0, sizeof(struct i2c_board_info));
 strscpy(client_info.type, "si2157", I2C_NAME_SIZE);
 client_info.addr = 0x60;
 client_info.platform_data = &si2157_config;

 client_tuner = smi_add_i2c_client(tuner_i2c_adapter, &client_info);
 if (!client_tuner) {
  smi_del_i2c_client(port->i2c_client_demod);
  port->i2c_client_demod = ((void*)0);
  ret = -ENODEV;
  return ret;
 }
 port->i2c_client_tuner = client_tuner;
 return ret;
}
