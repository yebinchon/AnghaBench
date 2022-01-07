
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int phy_speed; int clk; TYPE_1__* pdev; } ;
struct device {scalar_t__ of_node; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ACPI_HANDLE (struct device*) ;


 int acpi_evaluate_object (int ,char*,int *,int *) ;
 struct clk* clk_get_parent (int ) ;
 int clk_set_rate (struct clk*,int) ;

__attribute__((used)) static void xgene_enet_configure_clock(struct xgene_enet_pdata *pdata)
{
 struct device *dev = &pdata->pdev->dev;

 if (dev->of_node) {
  struct clk *parent = clk_get_parent(pdata->clk);

  switch (pdata->phy_speed) {
  case 129:
   clk_set_rate(parent, 2500000);
   break;
  case 128:
   clk_set_rate(parent, 25000000);
   break;
  default:
   clk_set_rate(parent, 125000000);
   break;
  }
 }
}
