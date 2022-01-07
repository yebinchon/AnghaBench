
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nand_memory_organization {int bits_per_cell; } ;
struct TYPE_7__ {TYPE_4__* desc; } ;
struct TYPE_5__ {int * data; } ;
struct nand_chip {TYPE_3__ manufacturer; TYPE_1__ id; int base; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* detect ) (struct nand_chip*) ;} ;


 int nand_decode_ext_id (struct nand_chip*) ;
 int nand_get_bits_per_cell (int ) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;
 int stub1 (struct nand_chip*) ;

__attribute__((used)) static void nand_manufacturer_detect(struct nand_chip *chip)
{




 if (chip->manufacturer.desc && chip->manufacturer.desc->ops &&
     chip->manufacturer.desc->ops->detect) {
  struct nand_memory_organization *memorg;

  memorg = nanddev_get_memorg(&chip->base);


  memorg->bits_per_cell = nand_get_bits_per_cell(chip->id.data[2]);
  chip->manufacturer.desc->ops->detect(chip);
 } else {
  nand_decode_ext_id(chip);
 }
}
