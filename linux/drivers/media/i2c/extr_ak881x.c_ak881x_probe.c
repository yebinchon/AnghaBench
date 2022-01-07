
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {TYPE_1__* platform_data; } ;
struct i2c_client {TYPE_2__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;
struct ak881x {int lines; void* revision; TYPE_1__* pdata; int subdev; } ;
struct TYPE_6__ {int flags; } ;


 int AK881X_DEVICE_ID ;
 int AK881X_DEVICE_REVISION ;
 int AK881X_FIELD ;

 int AK881X_IF_MODE_MASK ;


 int AK881X_INTERFACE_MODE ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int ak881x_subdev_ops ;
 int dev_dbg (TYPE_2__*,char*,int) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_2__*,char*,int,void*) ;
 int dev_warn (int *,char*) ;
 struct ak881x* devm_kzalloc (TYPE_2__*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 void* reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;

__attribute__((used)) static int ak881x_probe(struct i2c_client *client,
   const struct i2c_device_id *did)
{
 struct i2c_adapter *adapter = client->adapter;
 struct ak881x *ak881x;
 u8 ifmode, data;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 ak881x = devm_kzalloc(&client->dev, sizeof(*ak881x), GFP_KERNEL);
 if (!ak881x)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&ak881x->subdev, client, &ak881x_subdev_ops);

 data = reg_read(client, AK881X_DEVICE_ID);

 switch (data) {
 case 0x13:
 case 0x14:
  break;
 default:
  dev_err(&client->dev,
   "No ak881x chip detected, register read %x\n", data);
  return -ENODEV;
 }

 ak881x->revision = reg_read(client, AK881X_DEVICE_REVISION);
 ak881x->pdata = client->dev.platform_data;

 if (ak881x->pdata) {
  if (ak881x->pdata->flags & AK881X_FIELD)
   ifmode = 4;
  else
   ifmode = 0;

  switch (ak881x->pdata->flags & AK881X_IF_MODE_MASK) {
  case 130:
   ifmode |= 1;
   break;
  case 129:
   ifmode |= 2;
   break;
  case 128:
  default:
   break;
  }

  dev_dbg(&client->dev, "IF mode %x\n", ifmode);






  reg_write(client, AK881X_INTERFACE_MODE, ifmode | (20 << 3));
 }


 ak881x->lines = 480;

 dev_info(&client->dev, "Detected an ak881x chip ID %x, revision %x\n",
   data, ak881x->revision);

 return 0;
}
