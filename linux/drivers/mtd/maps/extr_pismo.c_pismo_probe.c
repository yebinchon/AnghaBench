
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pismo_pdata {int * cs_addrs; int vpp_data; int set_vpp; } ;
struct pismo_eeprom {TYPE_1__* cs; int board; } ;
struct pismo_data {int vpp_data; int vpp; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct pismo_pdata* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int adapter; } ;
typedef int eeprom ;
struct TYPE_5__ {int type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct pismo_data*) ;
 int kfree (struct pismo_data*) ;
 struct pismo_data* kzalloc (int,int ) ;
 int pismo_add_one (struct pismo_data*,int,TYPE_1__*,int ) ;
 int pismo_eeprom_read (struct i2c_client*,struct pismo_eeprom*,int ,int) ;

__attribute__((used)) static int pismo_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct pismo_pdata *pdata = client->dev.platform_data;
 struct pismo_eeprom eeprom;
 struct pismo_data *pismo;
 int ret, i;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "functionality mismatch\n");
  return -EIO;
 }

 pismo = kzalloc(sizeof(*pismo), GFP_KERNEL);
 if (!pismo)
  return -ENOMEM;

 pismo->client = client;
 if (pdata) {
  pismo->vpp = pdata->set_vpp;
  pismo->vpp_data = pdata->vpp_data;
 }
 i2c_set_clientdata(client, pismo);

 ret = pismo_eeprom_read(client, &eeprom, 0, sizeof(eeprom));
 if (ret < 0) {
  dev_err(&client->dev, "error reading EEPROM: %d\n", ret);
  goto exit_free;
 }

 dev_info(&client->dev, "%.15s board found\n", eeprom.board);

 for (i = 0; i < ARRAY_SIZE(eeprom.cs); i++)
  if (eeprom.cs[i].type != 0xff)
   pismo_add_one(pismo, i, &eeprom.cs[i],
          pdata->cs_addrs[i]);

 return 0;

 exit_free:
 kfree(pismo);
 return ret;
}
