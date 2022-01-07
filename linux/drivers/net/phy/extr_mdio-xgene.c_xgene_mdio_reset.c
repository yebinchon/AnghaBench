
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_mdio_pdata {int clk; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int ACPI_HANDLE (TYPE_1__*) ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int udelay (int) ;
 int xgene_enet_ecc_init (struct xgene_mdio_pdata*) ;
 int xgene_gmac_reset (struct xgene_mdio_pdata*) ;

__attribute__((used)) static int xgene_mdio_reset(struct xgene_mdio_pdata *pdata)
{
 int ret;

 if (pdata->dev->of_node) {
  clk_prepare_enable(pdata->clk);
  udelay(5);
  clk_disable_unprepare(pdata->clk);
  udelay(5);
  clk_prepare_enable(pdata->clk);
  udelay(5);
 } else {




 }

 ret = xgene_enet_ecc_init(pdata);
 if (ret) {
  if (pdata->dev->of_node)
   clk_disable_unprepare(pdata->clk);
  return ret;
 }
 xgene_gmac_reset(pdata);

 return 0;
}
