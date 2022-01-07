
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_hcd_omap {int usbhs_rev; int uhh_base; } ;
struct device {int dummy; } ;


 unsigned int OMAP4_UHH_HOSTCONFIG_APP_START_CLK ;
 int OMAP_UHH_HOSTCONFIG ;
 unsigned int OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN ;
 unsigned int OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN ;
 unsigned int OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN ;
 unsigned int OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN ;


 int dev_dbg (struct device*,char*,...) ;
 struct usbhs_hcd_omap* dev_get_drvdata (struct device*) ;
 unsigned int omap_usbhs_rev1_hostconfig (struct usbhs_hcd_omap*,unsigned int) ;
 unsigned int omap_usbhs_rev2_hostconfig (struct usbhs_hcd_omap*,unsigned int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 unsigned int usbhs_read (int ,int ) ;
 int usbhs_write (int ,int ,unsigned int) ;

__attribute__((used)) static void omap_usbhs_init(struct device *dev)
{
 struct usbhs_hcd_omap *omap = dev_get_drvdata(dev);
 unsigned reg;

 dev_dbg(dev, "starting TI HSUSB Controller\n");

 pm_runtime_get_sync(dev);

 reg = usbhs_read(omap->uhh_base, OMAP_UHH_HOSTCONFIG);

 reg |= (OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN
   | OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN
   | OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN);
 reg |= OMAP4_UHH_HOSTCONFIG_APP_START_CLK;
 reg &= ~OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN;

 switch (omap->usbhs_rev) {
 case 129:
  reg = omap_usbhs_rev1_hostconfig(omap, reg);
  break;

 case 128:
  reg = omap_usbhs_rev2_hostconfig(omap, reg);
  break;

 default:
  reg = omap_usbhs_rev2_hostconfig(omap, reg);
  break;
 }

 usbhs_write(omap->uhh_base, OMAP_UHH_HOSTCONFIG, reg);
 dev_dbg(dev, "UHH setup done, uhh_hostconfig=%x\n", reg);

 pm_runtime_put_sync(dev);
}
