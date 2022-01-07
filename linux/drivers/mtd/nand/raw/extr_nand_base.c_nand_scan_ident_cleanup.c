
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int onfi; int model; } ;
struct nand_chip {TYPE_1__ parameters; } ;


 int kfree (int ) ;

__attribute__((used)) static void nand_scan_ident_cleanup(struct nand_chip *chip)
{
 kfree(chip->parameters.model);
 kfree(chip->parameters.onfi);
}
