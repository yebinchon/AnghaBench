
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 int dev_vdbg (int *,char*,int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int ov2640_mask_set(struct i2c_client *client,
      u8 reg, u8 mask, u8 set)
{
 s32 val = i2c_smbus_read_byte_data(client, reg);
 if (val < 0)
  return val;

 val &= ~mask;
 val |= set & mask;

 dev_vdbg(&client->dev, "masks: 0x%02x, 0x%02x", reg, val);

 return i2c_smbus_write_byte_data(client, reg, val);
}
