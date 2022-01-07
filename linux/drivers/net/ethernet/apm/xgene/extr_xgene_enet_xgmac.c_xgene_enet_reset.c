
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {TYPE_1__* pdev; int clk; } ;
struct device {scalar_t__ of_node; } ;
typedef int acpi_status ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ENODEV ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int udelay (int) ;
 int xgene_enet_config_ring_if_assoc (struct xgene_enet_pdata*) ;
 int xgene_enet_ecc_init (struct xgene_enet_pdata*) ;
 int xgene_ring_mgr_init (struct xgene_enet_pdata*) ;

__attribute__((used)) static int xgene_enet_reset(struct xgene_enet_pdata *pdata)
{
 struct device *dev = &pdata->pdev->dev;

 if (!xgene_ring_mgr_init(pdata))
  return -ENODEV;

 if (dev->of_node) {
  clk_prepare_enable(pdata->clk);
  udelay(5);
  clk_disable_unprepare(pdata->clk);
  udelay(5);
  clk_prepare_enable(pdata->clk);
  udelay(5);
 } else {
 }

 xgene_enet_ecc_init(pdata);
 xgene_enet_config_ring_if_assoc(pdata);

 return 0;
}
