
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dummy_controller; } ;
struct nand_chip {int buf_align; int * controller; TYPE_1__ legacy; } ;


 int nand_controller_init (int *) ;
 int nand_legacy_set_defaults (struct nand_chip*) ;

__attribute__((used)) static void nand_set_defaults(struct nand_chip *chip)
{

 if (!chip->controller) {
  chip->controller = &chip->legacy.dummy_controller;
  nand_controller_init(chip->controller);
 }

 nand_legacy_set_defaults(chip);

 if (!chip->buf_align)
  chip->buf_align = 1;
}
