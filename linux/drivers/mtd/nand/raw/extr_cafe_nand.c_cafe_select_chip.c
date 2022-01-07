
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct cafe_priv {int ctl1; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL1_CHIPSELECT ;
 int cafe_dev_dbg (int *,char*,int) ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void cafe_select_chip(struct nand_chip *chip, int chipnr)
{
 struct cafe_priv *cafe = nand_get_controller_data(chip);

 cafe_dev_dbg(&cafe->pdev->dev, "select_chip %d\n", chipnr);



 if (chipnr)
  cafe->ctl1 |= CTRL1_CHIPSELECT;
 else
  cafe->ctl1 &= ~CTRL1_CHIPSELECT;
}
