
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int lock; } ;
typedef int phy_interface_t ;


 int EINVAL ;
 int MAC_IF_SELECTION_GMII ;
 int MAC_IF_SELECTION_MASK ;
 int MAC_IF_SELECTION_POS ;
 int MAC_IF_SELECTION_RGMII ;
 int MAC_IF_SELECTION_RMII ;
 int MSCC_PHY_EXT_PHY_CNTL_1 ;




 int genphy_soft_reset (struct phy_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc85xx_mac_if_set(struct phy_device *phydev,
         phy_interface_t interface)
{
 int rc;
 u16 reg_val;

 mutex_lock(&phydev->lock);
 reg_val = phy_read(phydev, MSCC_PHY_EXT_PHY_CNTL_1);
 reg_val &= ~(MAC_IF_SELECTION_MASK);
 switch (interface) {
 case 129:
  reg_val |= (MAC_IF_SELECTION_RGMII << MAC_IF_SELECTION_POS);
  break;
 case 128:
  reg_val |= (MAC_IF_SELECTION_RMII << MAC_IF_SELECTION_POS);
  break;
 case 130:
 case 131:
  reg_val |= (MAC_IF_SELECTION_GMII << MAC_IF_SELECTION_POS);
  break;
 default:
  rc = -EINVAL;
  goto out_unlock;
 }
 rc = phy_write(phydev, MSCC_PHY_EXT_PHY_CNTL_1, reg_val);
 if (rc)
  goto out_unlock;

 rc = genphy_soft_reset(phydev);

out_unlock:
 mutex_unlock(&phydev->lock);

 return rc;
}
