
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {TYPE_3__* def; } ;
struct gem {scalar_t__ phy_type; TYPE_4__ phy_mii; int dev; int lstate; scalar_t__ timer_ticks; int mii_phy_addr; scalar_t__ regs; TYPE_1__* pdev; int of_node; } ;
struct TYPE_8__ {char* name; TYPE_2__* ops; } ;
struct TYPE_7__ {int (* init ) (TYPE_4__*) ;} ;
struct TYPE_6__ {scalar_t__ vendor; scalar_t__ device; } ;


 int BMCR_RESET ;
 scalar_t__ MIF_CFG ;
 int MIF_CFG_BBMODE ;
 int MII_BMCR ;
 scalar_t__ PCI_DEVICE_ID_SUN_GEM ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 scalar_t__ PCI_VENDOR_ID_SUN ;
 scalar_t__ PCS_DMODE ;
 int PCS_DMODE_ESM ;
 int PCS_DMODE_GMOE ;
 int PCS_DMODE_MGM ;
 int PCS_DMODE_SM ;
 int PMAC_FTR_GMAC_PHY_RESET ;
 int gem_begin_auto_negotiation (struct gem*,int *) ;
 int gem_pcs_reinit_adv (struct gem*) ;
 int gem_pcs_reset (struct gem*) ;
 int link_down ;
 int msleep (int) ;
 int netdev_info (int ,char*,char*) ;
 int netdev_warn (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ phy_mii_mdio0 ;
 scalar_t__ phy_mii_mdio1 ;
 scalar_t__ phy_serialink ;
 int pmac_call_feature (int ,int ,int ,int ) ;
 int readl (scalar_t__) ;
 int stub1 (TYPE_4__*) ;
 int sungem_phy_probe (TYPE_4__*,int ) ;
 int sungem_phy_read (struct gem*,int ) ;
 int sungem_phy_write (struct gem*,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_init_phy(struct gem *gp)
{
 u32 mifcfg;


 mifcfg = readl(gp->regs + MIF_CFG);
 mifcfg &= ~MIF_CFG_BBMODE;
 writel(mifcfg, gp->regs + MIF_CFG);

 if (gp->pdev->vendor == PCI_VENDOR_ID_APPLE) {
  int i;





  for (i = 0; i < 3; i++) {







   sungem_phy_write(gp, MII_BMCR, BMCR_RESET);
   msleep(20);
   if (sungem_phy_read(gp, MII_BMCR) != 0xffff)
    break;
   if (i == 2)
    netdev_warn(gp->dev, "GMAC PHY not responding !\n");
  }
 }

 if (gp->pdev->vendor == PCI_VENDOR_ID_SUN &&
     gp->pdev->device == PCI_DEVICE_ID_SUN_GEM) {
  u32 val;


  if (gp->phy_type == phy_mii_mdio0 ||
      gp->phy_type == phy_mii_mdio1) {
   val = PCS_DMODE_MGM;
  } else if (gp->phy_type == phy_serialink) {
   val = PCS_DMODE_SM | PCS_DMODE_GMOE;
  } else {
   val = PCS_DMODE_ESM;
  }

  writel(val, gp->regs + PCS_DMODE);
 }

 if (gp->phy_type == phy_mii_mdio0 ||
     gp->phy_type == phy_mii_mdio1) {

  sungem_phy_probe(&gp->phy_mii, gp->mii_phy_addr);


  if (gp->phy_mii.def && gp->phy_mii.def->ops->init)
   gp->phy_mii.def->ops->init(&gp->phy_mii);
 } else {
  gem_pcs_reset(gp);
  gem_pcs_reinit_adv(gp);
 }


 gp->timer_ticks = 0;
 gp->lstate = link_down;
 netif_carrier_off(gp->dev);


 if (gp->phy_type == phy_mii_mdio0 ||
     gp->phy_type == phy_mii_mdio1)
  netdev_info(gp->dev, "Found %s PHY\n",
       gp->phy_mii.def ? gp->phy_mii.def->name : "no");

 gem_begin_auto_negotiation(gp, ((void*)0));
}
