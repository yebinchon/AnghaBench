
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int const* nicpm_base; int const* idm_base; int const* base; } ;
struct bgmac {scalar_t__ irq; int feature_flags; int phy_connect; int cmn_maskset32; int get_bus_clock; int cco_ctl_maskset; int clk_enable; int clk_enabled; int idm_write; int idm_read; int write; int read; TYPE_2__ plat; TYPE_1__* net_dev; TYPE_3__* dma_dev; TYPE_3__* dev; } ;
struct TYPE_7__ {int dev_addr; } ;


 int BGMAC_FEAT_CLKCTLST ;
 int BGMAC_FEAT_CMDCFG_SR_REV4 ;
 int BGMAC_FEAT_FORCE_SPEED_2500 ;
 int BGMAC_FEAT_IDM_MASK ;
 int BGMAC_FEAT_NO_RESET ;
 int BGMAC_FEAT_RX_MASK_SETUP ;
 int BGMAC_FEAT_TX_MASK_SETUP ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 struct bgmac* bgmac_alloc (TYPE_3__*) ;
 int bgmac_enet_probe (struct bgmac*) ;
 int bgmac_phy_connect_direct ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_warn (TYPE_3__*,char*) ;
 void* devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int ether_addr_copy (int ,int const*) ;
 int * of_get_mac_address (struct device_node*) ;
 scalar_t__ of_parse_phandle (struct device_node*,char*,int ) ;
 int platform_bgmac_cco_ctl_maskset ;
 int platform_bgmac_clk_enable ;
 int platform_bgmac_clk_enabled ;
 int platform_bgmac_cmn_maskset32 ;
 int platform_bgmac_get_bus_clock ;
 int platform_bgmac_idm_read ;
 int platform_bgmac_idm_write ;
 int platform_bgmac_read ;
 int platform_bgmac_write ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_phy_connect ;
 int platform_set_drvdata (struct platform_device*,struct bgmac*) ;

__attribute__((used)) static int bgmac_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct bgmac *bgmac;
 struct resource *regs;
 const u8 *mac_addr;

 bgmac = bgmac_alloc(&pdev->dev);
 if (!bgmac)
  return -ENOMEM;

 platform_set_drvdata(pdev, bgmac);


 bgmac->feature_flags |= BGMAC_FEAT_CLKCTLST;
 bgmac->feature_flags |= BGMAC_FEAT_NO_RESET;
 bgmac->feature_flags |= BGMAC_FEAT_CMDCFG_SR_REV4;
 bgmac->feature_flags |= BGMAC_FEAT_TX_MASK_SETUP;
 bgmac->feature_flags |= BGMAC_FEAT_RX_MASK_SETUP;
 bgmac->feature_flags |= BGMAC_FEAT_IDM_MASK;

 bgmac->dev = &pdev->dev;
 bgmac->dma_dev = &pdev->dev;

 mac_addr = of_get_mac_address(np);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(bgmac->net_dev->dev_addr, mac_addr);
 else
  dev_warn(&pdev->dev, "MAC address not present in device tree\n");

 bgmac->irq = platform_get_irq(pdev, 0);
 if (bgmac->irq < 0)
  return bgmac->irq;

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "amac_base");
 if (!regs) {
  dev_err(&pdev->dev, "Unable to obtain base resource\n");
  return -EINVAL;
 }

 bgmac->plat.base = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(bgmac->plat.base))
  return PTR_ERR(bgmac->plat.base);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "idm_base");
 if (regs) {
  bgmac->plat.idm_base = devm_ioremap_resource(&pdev->dev, regs);
  if (IS_ERR(bgmac->plat.idm_base))
   return PTR_ERR(bgmac->plat.idm_base);
  bgmac->feature_flags &= ~BGMAC_FEAT_IDM_MASK;
 }

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "nicpm_base");
 if (regs) {
  bgmac->plat.nicpm_base = devm_ioremap_resource(&pdev->dev,
              regs);
  if (IS_ERR(bgmac->plat.nicpm_base))
   return PTR_ERR(bgmac->plat.nicpm_base);
 }

 bgmac->read = platform_bgmac_read;
 bgmac->write = platform_bgmac_write;
 bgmac->idm_read = platform_bgmac_idm_read;
 bgmac->idm_write = platform_bgmac_idm_write;
 bgmac->clk_enabled = platform_bgmac_clk_enabled;
 bgmac->clk_enable = platform_bgmac_clk_enable;
 bgmac->cco_ctl_maskset = platform_bgmac_cco_ctl_maskset;
 bgmac->get_bus_clock = platform_bgmac_get_bus_clock;
 bgmac->cmn_maskset32 = platform_bgmac_cmn_maskset32;
 if (of_parse_phandle(np, "phy-handle", 0)) {
  bgmac->phy_connect = platform_phy_connect;
 } else {
  bgmac->phy_connect = bgmac_phy_connect_direct;
  bgmac->feature_flags |= BGMAC_FEAT_FORCE_SPEED_2500;
 }

 return bgmac_enet_probe(bgmac);
}
