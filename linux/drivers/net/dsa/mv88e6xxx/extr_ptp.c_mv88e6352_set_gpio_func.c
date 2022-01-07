
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_6__ {TYPE_1__* gpio_ops; } ;
struct TYPE_5__ {TYPE_3__* ops; } ;
struct TYPE_4__ {int (* set_dir ) (struct mv88e6xxx_chip*,int,int) ;int (* set_pctl ) (struct mv88e6xxx_chip*,int,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mv88e6xxx_chip*,int,int) ;
 int stub2 (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static int mv88e6352_set_gpio_func(struct mv88e6xxx_chip *chip, int pin,
       int func, int input)
{
 int err;

 if (!chip->info->ops->gpio_ops)
  return -EOPNOTSUPP;

 err = chip->info->ops->gpio_ops->set_dir(chip, pin, input);
 if (err)
  return err;

 return chip->info->ops->gpio_ops->set_pctl(chip, pin, func);
}
