
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {int dev; int client; } ;


 int DA9034_CHIP_ID ;
 int DA9034_SYS_CTRL_A ;
 int DA9034_SYS_CTRL_B ;
 int __da903x_read (int ,int ,int *) ;
 int __da903x_write (int ,int,int) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static int da9034_init_chip(struct da903x_chip *chip)
{
 uint8_t chip_id;
 int err;

 err = __da903x_read(chip->client, DA9034_CHIP_ID, &chip_id);
 if (err)
  return err;

 err = __da903x_write(chip->client, DA9034_SYS_CTRL_A, 0xE8);
 if (err)
  return err;


 __da903x_write(chip->client, 0x10, 0x07);
 __da903x_write(chip->client, 0x11, 0xff);
 __da903x_write(chip->client, 0x12, 0xff);


 __da903x_write(chip->client, DA9034_SYS_CTRL_B, 0x20);
 __da903x_write(chip->client, DA9034_SYS_CTRL_A, 0x60);


 __da903x_write(chip->client, 0x90, 0x01);
 __da903x_write(chip->client, 0xB0, 0x08);


 __da903x_write(chip->client, 0x20, 0x00);

 dev_info(chip->dev, "DA9034 (CHIP ID: 0x%02x) detected\n", chip_id);
 return 0;
}
