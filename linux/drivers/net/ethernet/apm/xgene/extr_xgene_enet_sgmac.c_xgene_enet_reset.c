
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {scalar_t__ enet_id; int port_id; TYPE_1__* pdev; int clk; scalar_t__ mdio_driver; } ;
struct device {scalar_t__ of_node; } ;
typedef int acpi_status ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ENODEV ;
 int IS_ERR (int ) ;
 int SGMII_EN ;
 int XGENET_CONFIG_REG_ADDR ;
 scalar_t__ XGENE_ENET2 ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int udelay (int) ;
 int xgene_enet_config_ring_if_assoc (struct xgene_enet_pdata*) ;
 int xgene_enet_ecc_init (struct xgene_enet_pdata*) ;
 int xgene_enet_wr_clkrst_csr (struct xgene_enet_pdata*,int ,int ) ;
 int xgene_ring_mgr_init (struct xgene_enet_pdata*) ;

__attribute__((used)) static int xgene_enet_reset(struct xgene_enet_pdata *p)
{
 struct device *dev = &p->pdev->dev;

 if (!xgene_ring_mgr_init(p))
  return -ENODEV;

 if (p->mdio_driver && p->enet_id == XGENE_ENET2) {
  xgene_enet_config_ring_if_assoc(p);
  return 0;
 }

 if (p->enet_id == XGENE_ENET2)
  xgene_enet_wr_clkrst_csr(p, XGENET_CONFIG_REG_ADDR, SGMII_EN);

 if (dev->of_node) {
  if (!IS_ERR(p->clk)) {
   clk_prepare_enable(p->clk);
   udelay(5);
   clk_disable_unprepare(p->clk);
   udelay(5);
   clk_prepare_enable(p->clk);
   udelay(5);
  }
 } else {
 }

 if (!p->port_id) {
  xgene_enet_ecc_init(p);
  xgene_enet_config_ring_if_assoc(p);
 }

 return 0;
}
