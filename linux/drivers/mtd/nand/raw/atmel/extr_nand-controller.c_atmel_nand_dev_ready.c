
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int gpio; } ;
struct TYPE_4__ {TYPE_1__ rb; } ;


 int gpiod_get_value (int ) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static int atmel_nand_dev_ready(struct nand_chip *chip)
{
 struct atmel_nand *nand = to_atmel_nand(chip);

 return gpiod_get_value(nand->activecs->rb.gpio);
}
