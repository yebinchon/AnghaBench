
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ speed; scalar_t__ duplex; } ;
struct netsec_priv {scalar_t__ phy_interface; TYPE_1__* ndev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;


 int ETIMEDOUT ;
 int GMAC_REG_MCR ;
 int NETSEC_GMAC_MCR_REG_CST ;
 int NETSEC_GMAC_MCR_REG_FES ;
 int NETSEC_GMAC_MCR_REG_FULL_DUPLEX_COMMON ;
 int NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON ;
 int NETSEC_GMAC_MCR_REG_IBN ;
 int NETSEC_GMAC_MCR_REG_JE ;
 int NETSEC_MCR_PS ;
 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ netsec_mac_write (struct netsec_priv*,int ,int) ;
 scalar_t__ phy_interface_mode_is_rgmii (scalar_t__) ;

__attribute__((used)) static int netsec_mac_update_to_phy_state(struct netsec_priv *priv)
{
 struct phy_device *phydev = priv->ndev->phydev;
 u32 value = 0;

 value = phydev->duplex ? NETSEC_GMAC_MCR_REG_FULL_DUPLEX_COMMON :
     NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON;

 if (phydev->speed != SPEED_1000)
  value |= NETSEC_MCR_PS;

 if (priv->phy_interface != PHY_INTERFACE_MODE_GMII &&
     phydev->speed == SPEED_100)
  value |= NETSEC_GMAC_MCR_REG_FES;

 value |= NETSEC_GMAC_MCR_REG_CST | NETSEC_GMAC_MCR_REG_JE;

 if (phy_interface_mode_is_rgmii(priv->phy_interface))
  value |= NETSEC_GMAC_MCR_REG_IBN;

 if (netsec_mac_write(priv, GMAC_REG_MCR, value))
  return -ETIMEDOUT;

 return 0;
}
