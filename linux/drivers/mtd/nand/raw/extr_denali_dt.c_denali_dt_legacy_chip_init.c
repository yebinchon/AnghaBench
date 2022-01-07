
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct denali_controller {int nbanks; TYPE_2__* dev; } ;
struct denali_chip {int nsels; int chip; TYPE_1__* sels; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int bank; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int denali_chip_init (struct denali_controller*,struct denali_chip*) ;
 struct denali_chip* devm_kzalloc (TYPE_2__*,int ,int ) ;
 int nand_set_flash_node (int *,int ) ;
 int sels ;
 int struct_size (struct denali_chip*,int ,int) ;

__attribute__((used)) static int denali_dt_legacy_chip_init(struct denali_controller *denali)
{
 struct denali_chip *dchip;
 int nsels, i;

 nsels = denali->nbanks;

 dchip = devm_kzalloc(denali->dev, struct_size(dchip, sels, nsels),
        GFP_KERNEL);
 if (!dchip)
  return -ENOMEM;

 dchip->nsels = nsels;

 for (i = 0; i < nsels; i++)
  dchip->sels[i].bank = i;

 nand_set_flash_node(&dchip->chip, denali->dev->of_node);

 return denali_chip_init(denali, dchip);
}
