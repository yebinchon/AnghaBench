
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct ip101a_g_phy_priv* priv; } ;
struct ip101a_g_phy_priv {int sel_intr32; } ;


 int IP101A_G_APS_ON ;


 int IP101G_DIGITAL_IO_SPEC_CTRL ;
 int IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32 ;
 int IP10XX_SPEC_CTRL_STATUS ;
 int ip1xx_reset (struct phy_device*) ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int ip101a_g_config_init(struct phy_device *phydev)
{
 struct ip101a_g_phy_priv *priv = phydev->priv;
 int err, c;

 c = ip1xx_reset(phydev);
 if (c < 0)
  return c;


 switch (priv->sel_intr32) {
 case 128:
  err = phy_modify(phydev, IP101G_DIGITAL_IO_SPEC_CTRL,
     IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32, 0);
  if (err < 0)
   return err;
  break;

 case 129:
  err = phy_modify(phydev, IP101G_DIGITAL_IO_SPEC_CTRL,
     IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32,
     IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32);
  if (err < 0)
   return err;
  break;

 default:







  break;
 }


 c = phy_read(phydev, IP10XX_SPEC_CTRL_STATUS);
 c |= IP101A_G_APS_ON;

 return phy_write(phydev, IP10XX_SPEC_CTRL_STATUS, c);
}
