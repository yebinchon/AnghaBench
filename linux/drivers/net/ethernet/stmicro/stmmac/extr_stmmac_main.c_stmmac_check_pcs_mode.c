
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pcs; } ;
struct stmmac_priv {TYPE_1__* hw; int dev; TYPE_3__ dma_cap; TYPE_2__* plat; } ;
struct TYPE_5__ {int interface; } ;
struct TYPE_4__ {int pcs; } ;


 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int PHY_INTERFACE_MODE_SGMII ;
 int STMMAC_PCS_RGMII ;
 int STMMAC_PCS_SGMII ;
 int netdev_dbg (int ,char*) ;

__attribute__((used)) static void stmmac_check_pcs_mode(struct stmmac_priv *priv)
{
 int interface = priv->plat->interface;

 if (priv->dma_cap.pcs) {
  if ((interface == PHY_INTERFACE_MODE_RGMII) ||
      (interface == PHY_INTERFACE_MODE_RGMII_ID) ||
      (interface == PHY_INTERFACE_MODE_RGMII_RXID) ||
      (interface == PHY_INTERFACE_MODE_RGMII_TXID)) {
   netdev_dbg(priv->dev, "PCS RGMII support enabled\n");
   priv->hw->pcs = STMMAC_PCS_RGMII;
  } else if (interface == PHY_INTERFACE_MODE_SGMII) {
   netdev_dbg(priv->dev, "PCS SGMII support enabled\n");
   priv->hw->pcs = STMMAC_PCS_SGMII;
  }
 }
}
