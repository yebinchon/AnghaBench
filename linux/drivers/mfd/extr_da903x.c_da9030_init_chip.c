
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {int dev; int client; } ;


 int DA9030_CHIP_ID ;
 int DA9030_SYS_CTRL_A ;
 int __da903x_read (int ,int ,int *) ;
 int __da903x_write (int ,int ,int) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static int da9030_init_chip(struct da903x_chip *chip)
{
 uint8_t chip_id;
 int err;

 err = __da903x_read(chip->client, DA9030_CHIP_ID, &chip_id);
 if (err)
  return err;

 err = __da903x_write(chip->client, DA9030_SYS_CTRL_A, 0xE8);
 if (err)
  return err;

 dev_info(chip->dev, "DA9030 (CHIP ID: 0x%02x) detected\n", chip_id);
 return 0;
}
