
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int options; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int virt; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 int NAND_BUSWIDTH_16 ;
 int iowrite16 (int,int ) ;
 int iowrite8 (int,int ) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static void atmel_nand_write_byte(struct nand_chip *chip, u8 byte)
{
 struct atmel_nand *nand = to_atmel_nand(chip);

 if (chip->options & NAND_BUSWIDTH_16)
  iowrite16(byte | (byte << 8), nand->activecs->io.virt);
 else
  iowrite8(byte, nand->activecs->io.virt);
}
