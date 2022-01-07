
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int attached_dev; struct dp83640_private* priv; } ;
struct dp83640_private {struct dp83640_clock* clock; } ;
struct dp83640_clock {int extreg_lock; } ;


 int ENDIAN_FLAG ;
 int PAGE5 ;
 int PAGE6 ;
 int PSF_CFG0 ;
 int PSF_CFG1 ;
 int PSF_EVNT_EN ;
 int PSF_PTPVER ;
 int PSF_RXTS_EN ;
 int PSF_TXTS_EN ;
 int VERSIONPTP_MASK ;
 int VERSIONPTP_SHIFT ;
 scalar_t__ dev_mc_add (int ,int ) ;
 scalar_t__ dev_mc_del (int ,int ) ;
 int ext_write (int ,struct phy_device*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phydev_warn (struct phy_device*,char*) ;
 int status_frame_dst ;

__attribute__((used)) static void enable_status_frames(struct phy_device *phydev, bool on)
{
 struct dp83640_private *dp83640 = phydev->priv;
 struct dp83640_clock *clock = dp83640->clock;
 u16 cfg0 = 0, ver;

 if (on)
  cfg0 = PSF_EVNT_EN | PSF_RXTS_EN | PSF_TXTS_EN | ENDIAN_FLAG;

 ver = (PSF_PTPVER & VERSIONPTP_MASK) << VERSIONPTP_SHIFT;

 mutex_lock(&clock->extreg_lock);

 ext_write(0, phydev, PAGE5, PSF_CFG0, cfg0);
 ext_write(0, phydev, PAGE6, PSF_CFG1, ver);

 mutex_unlock(&clock->extreg_lock);

 if (!phydev->attached_dev) {
  phydev_warn(phydev,
       "expected to find an attached netdevice\n");
  return;
 }

 if (on) {
  if (dev_mc_add(phydev->attached_dev, status_frame_dst))
   phydev_warn(phydev, "failed to add mc address\n");
 } else {
  if (dev_mc_del(phydev->attached_dev, status_frame_dst))
   phydev_warn(phydev, "failed to delete mc address\n");
 }
}
