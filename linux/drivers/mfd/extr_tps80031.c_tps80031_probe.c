
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps80031_platform_data {scalar_t__ use_power_off; int irq_base; } ;
struct tps80031 {int irq_data; int * dev; int chip_info; int es_version; struct i2c_client** regmap; struct i2c_client** clients; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {scalar_t__ addr; int irq; int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 int TPS80031_EPROM_REV ;
 int TPS80031_JTAGVERNUM ;
 int TPS80031_NUM_SLAVES ;
 int TPS80031_SLAVE_ID3 ;
 int dev_err (int *,char*,...) ;
 struct tps80031_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ,int ) ;
 struct i2c_client* devm_i2c_new_dummy_device (int *,int ,scalar_t__) ;
 struct tps80031* devm_kzalloc (int *,int,int ) ;
 struct i2c_client* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps80031*) ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int ) ;
 scalar_t__ pm_power_off ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_get_domain (int ) ;
 int tps80031_cell ;
 int tps80031_init_ext_control (struct tps80031*,struct tps80031_platform_data*) ;
 int tps80031_irq_init (struct tps80031*,int ,int ) ;
 scalar_t__ tps80031_power_off ;
 struct tps80031* tps80031_power_off_dev ;
 int tps80031_pupd_init (struct tps80031*,struct tps80031_platform_data*) ;
 int tps80031_read (int *,int ,int ,int *) ;
 int * tps80031_regmap_configs ;
 scalar_t__* tps80031_slave_address ;

__attribute__((used)) static int tps80031_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct tps80031_platform_data *pdata = dev_get_platdata(&client->dev);
 struct tps80031 *tps80031;
 int ret;
 uint8_t es_version;
 uint8_t ep_ver;
 int i;

 if (!pdata) {
  dev_err(&client->dev, "tps80031 requires platform data\n");
  return -EINVAL;
 }

 tps80031 = devm_kzalloc(&client->dev, sizeof(*tps80031), GFP_KERNEL);
 if (!tps80031)
  return -ENOMEM;

 for (i = 0; i < TPS80031_NUM_SLAVES; i++) {
  if (tps80031_slave_address[i] == client->addr)
   tps80031->clients[i] = client;
  else
   tps80031->clients[i] = devm_i2c_new_dummy_device(&client->dev,
      client->adapter, tps80031_slave_address[i]);
  if (IS_ERR(tps80031->clients[i])) {
   dev_err(&client->dev, "can't attach client %d\n", i);
   return PTR_ERR(tps80031->clients[i]);
  }

  i2c_set_clientdata(tps80031->clients[i], tps80031);
  tps80031->regmap[i] = devm_regmap_init_i2c(tps80031->clients[i],
     &tps80031_regmap_configs[i]);
  if (IS_ERR(tps80031->regmap[i])) {
   ret = PTR_ERR(tps80031->regmap[i]);
   dev_err(&client->dev,
    "regmap %d init failed, err %d\n", i, ret);
   return ret;
  }
 }

 ret = tps80031_read(&client->dev, TPS80031_SLAVE_ID3,
   TPS80031_JTAGVERNUM, &es_version);
 if (ret < 0) {
  dev_err(&client->dev,
   "Silicon version number read failed: %d\n", ret);
  return ret;
 }

 ret = tps80031_read(&client->dev, TPS80031_SLAVE_ID3,
   TPS80031_EPROM_REV, &ep_ver);
 if (ret < 0) {
  dev_err(&client->dev,
   "Silicon eeprom version read failed: %d\n", ret);
  return ret;
 }

 dev_info(&client->dev, "ES version 0x%02x and EPROM version 0x%02x\n",
     es_version, ep_ver);
 tps80031->es_version = es_version;
 tps80031->dev = &client->dev;
 i2c_set_clientdata(client, tps80031);
 tps80031->chip_info = id->driver_data;

 ret = tps80031_irq_init(tps80031, client->irq, pdata->irq_base);
 if (ret) {
  dev_err(&client->dev, "IRQ init failed: %d\n", ret);
  return ret;
 }

 tps80031_pupd_init(tps80031, pdata);

 tps80031_init_ext_control(tps80031, pdata);

 ret = mfd_add_devices(tps80031->dev, -1,
   tps80031_cell, ARRAY_SIZE(tps80031_cell),
   ((void*)0), 0,
   regmap_irq_get_domain(tps80031->irq_data));
 if (ret < 0) {
  dev_err(&client->dev, "mfd_add_devices failed: %d\n", ret);
  goto fail_mfd_add;
 }

 if (pdata->use_power_off && !pm_power_off) {
  tps80031_power_off_dev = tps80031;
  pm_power_off = tps80031_power_off;
 }
 return 0;

fail_mfd_add:
 regmap_del_irq_chip(client->irq, tps80031->irq_data);
 return ret;
}
