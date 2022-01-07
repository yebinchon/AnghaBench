
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct apds990x_chip {int revision; int chipname; struct i2c_client* client; } ;


 int APDS990X_ID ;



 int APDS990X_REV ;
 int ENODEV ;
 int apds990x_read_byte (struct apds990x_chip*,int ,int*) ;
 int dev_err (int *,char*) ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int apds990x_detect(struct apds990x_chip *chip)
{
 struct i2c_client *client = chip->client;
 int ret;
 u8 id;

 ret = apds990x_read_byte(chip, APDS990X_ID, &id);
 if (ret < 0) {
  dev_err(&client->dev, "ID read failed\n");
  return ret;
 }

 ret = apds990x_read_byte(chip, APDS990X_REV, &chip->revision);
 if (ret < 0) {
  dev_err(&client->dev, "REV read failed\n");
  return ret;
 }

 switch (id) {
 case 130:
 case 128:
 case 129:
  snprintf(chip->chipname, sizeof(chip->chipname), "APDS-990x");
  break;
 default:
  ret = -ENODEV;
  break;
 }
 return ret;
}
