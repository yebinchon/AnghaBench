
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8 ;
struct twl_private {int dummy; } ;
struct twl_client {struct i2c_client* regmap; struct i2c_client* client; } ;
struct twl4030_platform_data {int gpio; int * clock; } ;
struct regmap_config {int dummy; } ;
struct platform_device {int dummy; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_4__ dev; scalar_t__ irq; scalar_t__ addr; int adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_18__ {int base; } ;
struct TYPE_17__ {int platform_data; } ;
struct TYPE_16__ {int ready; struct twl_client* twl_modules; TYPE_3__* twl_map; int twl_id; } ;


 int DRIVER_NAME ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_SCL_CTRL_PU ;
 int I2C_SDA_CTRL_PU ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 int REG_GPPUPDCTR1 ;
 int SMARTREFLEX_ENABLE ;
 int SR_I2C_SCL_CTRL_PU ;
 int SR_I2C_SDA_CTRL_PU ;
 int TWL4030_CLASS_ID ;
 int TWL4030_DCDC_GLOBAL_CFG ;
 int TWL4030_MODULE_INTBR ;
 int TWL6030_CLASS ;
 int TWL6030_CLASS_ID ;
 int TWL6032_BASEADD_CHARGER ;
 int TWL6032_SUBCLASS ;
 size_t TWL_MODULE_MAIN_CHARGE ;
 int TWL_MODULE_PM_RECEIVER ;
 int WARN (int,char*) ;
 int add_children (struct twl4030_platform_data*,int,int) ;
 int clocks_init (TYPE_4__*,int *) ;
 int dev_dbg (TYPE_4__*,char*,...) ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct twl4030_platform_data* dev_get_platdata (TYPE_4__*) ;
 struct twl_client* devm_kcalloc (TYPE_4__*,unsigned int,int,int ) ;
 TYPE_1__* devm_kzalloc (TYPE_4__*,int,int ) ;
 struct i2c_client* devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 struct i2c_client* i2c_new_dummy_device (int ,scalar_t__) ;
 int of_platform_populate (struct device_node*,int *,TYPE_2__*,TYPE_4__*) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (int ,int) ;
 int platform_device_put (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;
 int twl4030_init_chip_irq (int ) ;
 int twl4030_init_irq (TYPE_4__*,scalar_t__) ;
 TYPE_3__* twl4030_map ;
 struct regmap_config* twl4030_regmap_config ;
 int twl6030_init_irq (TYPE_4__*,scalar_t__) ;
 TYPE_3__* twl6030_map ;
 struct regmap_config* twl6030_regmap_config ;
 TYPE_2__* twl_auxdata_lookup ;
 scalar_t__ twl_class_is_4030 () ;
 unsigned int twl_get_num_slaves () ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;
 TYPE_1__* twl_priv ;
 int twl_read_idcode_register () ;
 int twl_remove (struct i2c_client*) ;

__attribute__((used)) static int
twl_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct twl4030_platform_data *pdata = dev_get_platdata(&client->dev);
 struct device_node *node = client->dev.of_node;
 struct platform_device *pdev;
 const struct regmap_config *twl_regmap_config;
 int irq_base = 0;
 int status;
 unsigned i, num_slaves;

 if (!node && !pdata) {
  dev_err(&client->dev, "no platform data\n");
  return -EINVAL;
 }

 if (twl_priv) {
  dev_dbg(&client->dev, "only one instance of %s allowed\n",
   DRIVER_NAME);
  return -EBUSY;
 }

 pdev = platform_device_alloc(DRIVER_NAME, -1);
 if (!pdev) {
  dev_err(&client->dev, "can't alloc pdev\n");
  return -ENOMEM;
 }

 status = platform_device_add(pdev);
 if (status) {
  platform_device_put(pdev);
  return status;
 }

 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C) == 0) {
  dev_dbg(&client->dev, "can't talk I2C?\n");
  status = -EIO;
  goto free;
 }

 twl_priv = devm_kzalloc(&client->dev, sizeof(struct twl_private),
    GFP_KERNEL);
 if (!twl_priv) {
  status = -ENOMEM;
  goto free;
 }

 if ((id->driver_data) & TWL6030_CLASS) {
  twl_priv->twl_id = TWL6030_CLASS_ID;
  twl_priv->twl_map = &twl6030_map[0];

  if ((id->driver_data) & TWL6032_SUBCLASS)
   twl_priv->twl_map[TWL_MODULE_MAIN_CHARGE].base =
       TWL6032_BASEADD_CHARGER;
  twl_regmap_config = twl6030_regmap_config;
 } else {
  twl_priv->twl_id = TWL4030_CLASS_ID;
  twl_priv->twl_map = &twl4030_map[0];
  twl_regmap_config = twl4030_regmap_config;
 }

 num_slaves = twl_get_num_slaves();
 twl_priv->twl_modules = devm_kcalloc(&client->dev,
      num_slaves,
      sizeof(struct twl_client),
      GFP_KERNEL);
 if (!twl_priv->twl_modules) {
  status = -ENOMEM;
  goto free;
 }

 for (i = 0; i < num_slaves; i++) {
  struct twl_client *twl = &twl_priv->twl_modules[i];

  if (i == 0) {
   twl->client = client;
  } else {
   twl->client = i2c_new_dummy_device(client->adapter,
          client->addr + i);
   if (IS_ERR(twl->client)) {
    dev_err(&client->dev,
     "can't attach client %d\n", i);
    status = PTR_ERR(twl->client);
    goto fail;
   }
  }

  twl->regmap = devm_regmap_init_i2c(twl->client,
         &twl_regmap_config[i]);
  if (IS_ERR(twl->regmap)) {
   status = PTR_ERR(twl->regmap);
   dev_err(&client->dev,
    "Failed to allocate regmap %d, err: %d\n", i,
    status);
   goto fail;
  }
 }

 twl_priv->ready = 1;


 clocks_init(&client->dev, pdata ? pdata->clock : ((void*)0));


 if (twl_class_is_4030()) {
  status = twl_read_idcode_register();
  WARN(status < 0, "Error: reading twl_idcode register value\n");
 }


 if (client->irq) {
  if (twl_class_is_4030()) {
   twl4030_init_chip_irq(id->name);
   irq_base = twl4030_init_irq(&client->dev, client->irq);
  } else {
   irq_base = twl6030_init_irq(&client->dev, client->irq);
  }

  if (irq_base < 0) {
   status = irq_base;
   goto fail;
  }
 }
 if (twl_class_is_4030()) {
  u8 temp;

  twl_i2c_read_u8(TWL4030_MODULE_INTBR, &temp, REG_GPPUPDCTR1);
  temp &= ~(SR_I2C_SDA_CTRL_PU | SR_I2C_SCL_CTRL_PU | I2C_SDA_CTRL_PU | I2C_SCL_CTRL_PU);

  twl_i2c_write_u8(TWL4030_MODULE_INTBR, temp, REG_GPPUPDCTR1);

  twl_i2c_read_u8(TWL_MODULE_PM_RECEIVER, &temp,
    TWL4030_DCDC_GLOBAL_CFG);
  temp |= SMARTREFLEX_ENABLE;
  twl_i2c_write_u8(TWL_MODULE_PM_RECEIVER, temp,
     TWL4030_DCDC_GLOBAL_CFG);
 }

 if (node) {
  if (pdata)
   twl_auxdata_lookup[0].platform_data = pdata->gpio;
  status = of_platform_populate(node, ((void*)0), twl_auxdata_lookup,
           &client->dev);
 } else {
  status = add_children(pdata, irq_base, id->driver_data);
 }

fail:
 if (status < 0)
  twl_remove(client);
free:
 if (status < 0)
  platform_device_unregister(pdev);

 return status;
}
