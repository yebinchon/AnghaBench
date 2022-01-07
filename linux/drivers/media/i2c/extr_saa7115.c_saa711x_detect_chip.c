
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int driver_data; int name; } ;
struct i2c_client {int addr; } ;


 int CHIP_VER_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int GM7113C ;
 int SAA7111 ;
 int SAA7111A ;
 int SAA7113 ;
 int SAA7114 ;
 int SAA7115 ;
 int SAA7118 ;
 int debug ;
 char i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int memcmp (char*,char*,int) ;
 int snprintf (char*,int,char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strscpy (char*,char*,int) ;
 int v4l2_info (struct i2c_client*,char*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,...) ;
 int v4l_info (struct i2c_client*,char*) ;

__attribute__((used)) static int saa711x_detect_chip(struct i2c_client *client,
          const struct i2c_device_id *id,
          char *name)
{
 char chip_ver[CHIP_VER_SIZE];
 char chip_id;
 int i;
 int autodetect;

 autodetect = !id || id->driver_data == 1;


 for (i = 0; i < CHIP_VER_SIZE; i++) {
  i2c_smbus_write_byte_data(client, 0, i);
  chip_ver[i] = i2c_smbus_read_byte_data(client, 0);
  name[i] = (chip_ver[i] & 0x0f) + '0';
  if (name[i] > '9')
   name[i] += 'a' - '9' - 1;
 }
 name[i] = '\0';


 if (!memcmp(name + 1, "f711", 4)) {
  chip_id = name[5];
  snprintf(name, CHIP_VER_SIZE, "saa711%c", chip_id);

  if (!autodetect && strcmp(name, id->name))
   return -EINVAL;

  switch (chip_id) {
  case '1':
   if (chip_ver[0] & 0xf0) {
    snprintf(name, CHIP_VER_SIZE, "saa711%ca", chip_id);
    v4l_info(client, "saa7111a variant found\n");
    return SAA7111A;
   }
   return SAA7111;
  case '3':
   return SAA7113;
  case '4':
   return SAA7114;
  case '5':
   return SAA7115;
  case '8':
   return SAA7118;
  default:
   v4l2_info(client,
      "WARNING: Philips/NXP chip unknown - Falling back to saa7111\n");
   return SAA7111;
  }
 }


 if (!memcmp(name, "0000", 4)) {
  chip_id = 0;
  for (i = 0; i < 4; i++) {
   chip_id = chip_id << 1;
   chip_id |= (chip_ver[i] & 0x80) ? 1 : 0;
  }
  strscpy(name, "gm7113c", CHIP_VER_SIZE);

  if (!autodetect && strcmp(name, id->name))
   return -EINVAL;

  v4l_dbg(1, debug, client,
   "It seems to be a %s chip (%*ph) @ 0x%x.\n",
   name, 16, chip_ver, client->addr << 1);

  return GM7113C;
 }


 if (!memcmp(name, "1111111111111111", CHIP_VER_SIZE)) {
  strscpy(name, "cjc7113", CHIP_VER_SIZE);

  if (!autodetect && strcmp(name, id->name))
   return -EINVAL;

  v4l_dbg(1, debug, client,
   "It seems to be a %s chip (%*ph) @ 0x%x.\n",
   name, 16, chip_ver, client->addr << 1);


  return SAA7113;
 }


 v4l_dbg(1, debug, client, "chip %*ph @ 0x%x is unknown.\n",
  16, chip_ver, client->addr << 1);
 return -ENODEV;
}
