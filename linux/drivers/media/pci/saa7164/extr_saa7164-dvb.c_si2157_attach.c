
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct si2157_config {struct dvb_frontend* fe; } ;
struct saa7164_port {struct i2c_client* i2c_client_tuner; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int addr; int type; struct si2157_config* platform_data; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int bi ;
struct TYPE_3__ {int owner; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int request_module (int ) ;
 int strscpy (int ,char*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int si2157_attach(struct saa7164_port *port, struct i2c_adapter *adapter,
 struct dvb_frontend *fe, u8 addr8bit, struct si2157_config *cfg)
{
 struct i2c_board_info bi;
 struct i2c_client *tuner;

 cfg->fe = fe;

 memset(&bi, 0, sizeof(bi));

 strscpy(bi.type, "si2157", I2C_NAME_SIZE);
 bi.platform_data = cfg;
 bi.addr = addr8bit >> 1;

 request_module(bi.type);

 tuner = i2c_new_device(adapter, &bi);
 if (tuner == ((void*)0) || tuner->dev.driver == ((void*)0))
  return -ENODEV;

 if (!try_module_get(tuner->dev.driver->owner)) {
  i2c_unregister_device(tuner);
  return -ENODEV;
 }

 port->i2c_client_tuner = tuner;

 return 0;
}
