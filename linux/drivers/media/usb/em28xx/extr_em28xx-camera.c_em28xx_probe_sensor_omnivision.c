
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_client {int addr; } ;
struct em28xx {size_t def_i2c_bus; scalar_t__ em28xx_sensor; TYPE_1__* intf; struct i2c_client* i2c_client; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ EM28XX_NOSENSOR ;
 scalar_t__ EM28XX_OV2640 ;
 int ENODEV ;
 int ENXIO ;
 scalar_t__ I2C_CLIENT_END ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,...) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 scalar_t__* omnivision_sensor_addrs ;

__attribute__((used)) static int em28xx_probe_sensor_omnivision(struct em28xx *dev)
{
 int ret, i;
 char *name;
 u8 reg;
 u16 id;
 struct i2c_client *client = &dev->i2c_client[dev->def_i2c_bus];

 dev->em28xx_sensor = EM28XX_NOSENSOR;




 for (i = 0; omnivision_sensor_addrs[i] != I2C_CLIENT_END; i++) {
  client->addr = omnivision_sensor_addrs[i];

  reg = 0x1c;
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0) {
   if (ret != -ENXIO)
    dev_err(&dev->intf->dev,
     "couldn't read from i2c device 0x%02x: error %i\n",
     client->addr << 1, ret);
   continue;
  }
  id = ret << 8;
  reg = 0x1d;
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0) {
   dev_err(&dev->intf->dev,
    "couldn't read from i2c device 0x%02x: error %i\n",
    client->addr << 1, ret);
   continue;
  }
  id += ret;

  if (id != 0x7fa2)
   continue;

  reg = 0x0a;
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0) {
   dev_err(&dev->intf->dev,
    "couldn't read from i2c device 0x%02x: error %i\n",
    client->addr << 1, ret);
   continue;
  }
  id = ret << 8;
  reg = 0x0b;
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0) {
   dev_err(&dev->intf->dev,
    "couldn't read from i2c device 0x%02x: error %i\n",
    client->addr << 1, ret);
   continue;
  }
  id += ret;

  switch (id) {
  case 0x2642:
   name = "OV2640";
   dev->em28xx_sensor = EM28XX_OV2640;
   break;
  case 0x7648:
   name = "OV7648";
   break;
  case 0x7660:
   name = "OV7660";
   break;
  case 0x7673:
   name = "OV7670";
   break;
  case 0x7720:
   name = "OV7720";
   break;
  case 0x7721:
   name = "OV7725";
   break;
  case 0x9648:
  case 0x9649:
   name = "OV9640";
   break;
  case 0x9650:
  case 0x9652:
   name = "OV9650";
   break;
  case 0x9656:
  case 0x9657:
   name = "OV9655";
   break;
  default:
   dev_info(&dev->intf->dev,
     "unknown OmniVision sensor detected: 0x%04x\n",
    id);
   return 0;
  }

  if (dev->em28xx_sensor == EM28XX_NOSENSOR)
   dev_info(&dev->intf->dev,
     "unsupported sensor detected: %s\n", name);
  else
   dev_info(&dev->intf->dev,
     "sensor %s detected\n", name);

  return 0;
 }

 return -ENODEV;
}
