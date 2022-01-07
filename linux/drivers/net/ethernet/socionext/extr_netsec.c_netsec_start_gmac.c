
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ speed; } ;
struct netsec_priv {int et_coalesce; TYPE_1__* ndev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int GMAC_REG_BMR ;
 int GMAC_REG_MCR ;
 int GMAC_REG_MFFR ;
 int GMAC_REG_OMR ;
 int GMAC_REG_RDLAR ;
 int GMAC_REG_TDLAR ;
 int MAC_REG_DESC_INIT ;
 int MAC_REG_DESC_SOFT_RST ;
 int NETSEC_GMAC_BMR_REG_COMMON ;
 int NETSEC_GMAC_BMR_REG_RESET ;
 int NETSEC_GMAC_BMR_REG_SWR ;
 int NETSEC_GMAC_MCR_REG_CST ;
 int NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON ;
 int NETSEC_GMAC_OMR_REG_SR ;
 int NETSEC_GMAC_OMR_REG_ST ;
 int NETSEC_GMAC_RDLAR_REG_COMMON ;
 int NETSEC_GMAC_TDLAR_REG_COMMON ;
 int NETSEC_REG_NRM_RX_INTEN_CLR ;
 int NETSEC_REG_NRM_TX_INTEN_CLR ;
 scalar_t__ SPEED_1000 ;
 int netsec_et_set_coalesce (TYPE_1__*,int *) ;
 int netsec_mac_read (struct netsec_priv*,int ,int*) ;
 int netsec_mac_update_to_phy_state (struct netsec_priv*) ;
 scalar_t__ netsec_mac_write (struct netsec_priv*,int ,int) ;
 scalar_t__ netsec_wait_while_busy (struct netsec_priv*,int ,int) ;
 int netsec_write (struct netsec_priv*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int netsec_start_gmac(struct netsec_priv *priv)
{
 struct phy_device *phydev = priv->ndev->phydev;
 u32 value = 0;
 int ret;

 if (phydev->speed != SPEED_1000)
  value = (NETSEC_GMAC_MCR_REG_CST |
    NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON);

 if (netsec_mac_write(priv, GMAC_REG_MCR, value))
  return -ETIMEDOUT;
 if (netsec_mac_write(priv, GMAC_REG_BMR,
        NETSEC_GMAC_BMR_REG_RESET))
  return -ETIMEDOUT;


 usleep_range(1000, 5000);

 ret = netsec_mac_read(priv, GMAC_REG_BMR, &value);
 if (ret)
  return ret;
 if (value & NETSEC_GMAC_BMR_REG_SWR)
  return -EAGAIN;

 netsec_write(priv, MAC_REG_DESC_SOFT_RST, 1);
 if (netsec_wait_while_busy(priv, MAC_REG_DESC_SOFT_RST, 1))
  return -ETIMEDOUT;

 netsec_write(priv, MAC_REG_DESC_INIT, 1);
 if (netsec_wait_while_busy(priv, MAC_REG_DESC_INIT, 1))
  return -ETIMEDOUT;

 if (netsec_mac_write(priv, GMAC_REG_BMR,
        NETSEC_GMAC_BMR_REG_COMMON))
  return -ETIMEDOUT;
 if (netsec_mac_write(priv, GMAC_REG_RDLAR,
        NETSEC_GMAC_RDLAR_REG_COMMON))
  return -ETIMEDOUT;
 if (netsec_mac_write(priv, GMAC_REG_TDLAR,
        NETSEC_GMAC_TDLAR_REG_COMMON))
  return -ETIMEDOUT;
 if (netsec_mac_write(priv, GMAC_REG_MFFR, 0x80000001))
  return -ETIMEDOUT;

 ret = netsec_mac_update_to_phy_state(priv);
 if (ret)
  return ret;

 ret = netsec_mac_read(priv, GMAC_REG_OMR, &value);
 if (ret)
  return ret;

 value |= NETSEC_GMAC_OMR_REG_SR;
 value |= NETSEC_GMAC_OMR_REG_ST;

 netsec_write(priv, NETSEC_REG_NRM_RX_INTEN_CLR, ~0);
 netsec_write(priv, NETSEC_REG_NRM_TX_INTEN_CLR, ~0);

 netsec_et_set_coalesce(priv->ndev, &priv->et_coalesce);

 if (netsec_mac_write(priv, GMAC_REG_OMR, value))
  return -ETIMEDOUT;

 return 0;
}
