
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds990x_chip {int regs; } ;


 int APDS990X_ENABLE ;
 int APDS990X_EN_DISABLE_ALL ;
 int ARRAY_SIZE (int ) ;
 int apds990x_write_byte (struct apds990x_chip*,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int apds990x_chip_off(struct apds990x_chip *chip)
{
 apds990x_write_byte(chip, APDS990X_ENABLE, APDS990X_EN_DISABLE_ALL);
 regulator_bulk_disable(ARRAY_SIZE(chip->regs), chip->regs);
 return 0;
}
