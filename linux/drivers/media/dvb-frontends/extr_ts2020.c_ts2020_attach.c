
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ts2020_config {int attach_in_use; int tuner_address; struct dvb_frontend* fe; } ;
struct TYPE_2__ {int driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct ts2020_config* platform_data; int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int pdata ;
typedef int board_info ;


 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int memcpy (struct ts2020_config*,struct ts2020_config const*,int) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strscpy (int ,char*,int ) ;

struct dvb_frontend *ts2020_attach(struct dvb_frontend *fe,
     const struct ts2020_config *config,
     struct i2c_adapter *i2c)
{
 struct i2c_client *client;
 struct i2c_board_info board_info;


 struct ts2020_config pdata;

 memcpy(&pdata, config, sizeof(pdata));
 pdata.fe = fe;
 pdata.attach_in_use = 1;

 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "ts2020", I2C_NAME_SIZE);
 board_info.addr = config->tuner_address;
 board_info.platform_data = &pdata;
 client = i2c_new_device(i2c, &board_info);
 if (!client || !client->dev.driver)
  return ((void*)0);

 return fe;
}
