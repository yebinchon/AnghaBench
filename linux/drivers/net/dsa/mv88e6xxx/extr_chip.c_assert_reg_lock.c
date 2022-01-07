
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dev; int reg_lock; } ;


 int dev_err (int ,char*) ;
 int dump_stack () ;
 int mutex_is_locked (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void assert_reg_lock(struct mv88e6xxx_chip *chip)
{
 if (unlikely(!mutex_is_locked(&chip->reg_lock))) {
  dev_err(chip->dev, "Switch registers lock not held!\n");
  dump_stack();
 }
}
