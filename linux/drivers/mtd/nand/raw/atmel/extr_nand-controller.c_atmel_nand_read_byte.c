
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int virt; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 int ioread8 (int ) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static u8 atmel_nand_read_byte(struct nand_chip *chip)
{
 struct atmel_nand *nand = to_atmel_nand(chip);

 return ioread8(nand->activecs->io.virt);
}
