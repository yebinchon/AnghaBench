
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int regs; int client; } ;


 int ARRAY_SIZE (int ) ;
 int BH1770_ALS_CONTROL ;
 int BH1770_DISABLE ;
 int BH1770_INTERRUPT ;
 int BH1770_PS_CONTROL ;
 int BH1770_STANDBY ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void bh1770_chip_off(struct bh1770_chip *chip)
{
 i2c_smbus_write_byte_data(chip->client,
     BH1770_INTERRUPT, BH1770_DISABLE);
 i2c_smbus_write_byte_data(chip->client,
    BH1770_ALS_CONTROL, BH1770_STANDBY);
 i2c_smbus_write_byte_data(chip->client,
    BH1770_PS_CONTROL, BH1770_STANDBY);
 regulator_bulk_disable(ARRAY_SIZE(chip->regs), chip->regs);
}
