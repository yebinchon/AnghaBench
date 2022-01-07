
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int ICS932S401_DEVICE ;
 int ICS932S401_REG_DEVICE ;
 int ICS932S401_REG_VENDOR_REV ;
 int ICS932S401_REV ;
 int ICS932S401_REV_SHIFT ;
 int ICS932S401_VENDOR ;
 int ICS932S401_VENDOR_MASK ;
 int dev_info (int *,char*,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int ics932s401_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int vendor, device, revision;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 vendor = i2c_smbus_read_word_data(client, ICS932S401_REG_VENDOR_REV);
 vendor >>= 8;
 revision = vendor >> ICS932S401_REV_SHIFT;
 vendor &= ICS932S401_VENDOR_MASK;
 if (vendor != ICS932S401_VENDOR)
  return -ENODEV;

 device = i2c_smbus_read_word_data(client, ICS932S401_REG_DEVICE);
 device >>= 8;
 if (device != ICS932S401_DEVICE)
  return -ENODEV;

 if (revision != ICS932S401_REV)
  dev_info(&adapter->dev, "Unknown revision %d\n", revision);

 strlcpy(info->type, "ics932s401", I2C_NAME_SIZE);

 return 0;
}
