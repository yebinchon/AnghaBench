
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dev; } ;
struct bh1770_chip {int prox_coef; int prox_const; int chipname; int lux_cf; scalar_t__ revision; struct i2c_client* client; } ;
typedef int s32 ;


 int BH1770_COEF_SCALER ;
 int BH1770_MANUFACT_ID ;
 scalar_t__ BH1770_MANUFACT_OSRAM ;
 scalar_t__ BH1770_MANUFACT_ROHM ;
 int BH1770_NEUTRAL_CF ;
 scalar_t__ BH1770_PART ;
 int BH1770_PART_ID ;
 scalar_t__ BH1770_PART_MASK ;
 scalar_t__ BH1770_REV_MASK ;
 scalar_t__ BH1770_REV_SHIFT ;
 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int bh1770_detect(struct bh1770_chip *chip)
{
 struct i2c_client *client = chip->client;
 s32 ret;
 u8 manu, part;

 ret = i2c_smbus_read_byte_data(client, BH1770_MANUFACT_ID);
 if (ret < 0)
  goto error;
 manu = (u8)ret;

 ret = i2c_smbus_read_byte_data(client, BH1770_PART_ID);
 if (ret < 0)
  goto error;
 part = (u8)ret;

 chip->revision = (part & BH1770_REV_MASK) >> BH1770_REV_SHIFT;
 chip->prox_coef = BH1770_COEF_SCALER;
 chip->prox_const = 0;
 chip->lux_cf = BH1770_NEUTRAL_CF;

 if ((manu == BH1770_MANUFACT_ROHM) &&
     ((part & BH1770_PART_MASK) == BH1770_PART)) {
  snprintf(chip->chipname, sizeof(chip->chipname), "BH1770GLC");
  return 0;
 }

 if ((manu == BH1770_MANUFACT_OSRAM) &&
     ((part & BH1770_PART_MASK) == BH1770_PART)) {
  snprintf(chip->chipname, sizeof(chip->chipname), "SFH7770");

  chip->prox_coef = 819;
  chip->prox_const = 40;
  return 0;
 }

 ret = -ENODEV;
error:
 dev_dbg(&client->dev, "BH1770 or SFH7770 not found\n");

 return ret;
}
