
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int pause; int asym_pause; int link; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {int pause_rx; int pause_tx; int napi; scalar_t__ pause_aneg; } ;


 int NB8800_RXC_CR ;
 int NB8800_RX_CTL ;
 int RCR_FL ;
 int RX_PAUSE_EN ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int nb8800_dma_stop (struct net_device*) ;
 int nb8800_modb (struct nb8800_priv*,int ,int ,int) ;
 int nb8800_modl (struct nb8800_priv*,int ,int,int) ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 int nb8800_start_rx (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;

__attribute__((used)) static void nb8800_pause_config(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 u32 rxcr;

 if (priv->pause_aneg) {
  if (!phydev || !phydev->link)
   return;

  priv->pause_rx = phydev->pause;
  priv->pause_tx = phydev->pause ^ phydev->asym_pause;
 }

 nb8800_modb(priv, NB8800_RX_CTL, RX_PAUSE_EN, priv->pause_rx);

 rxcr = nb8800_readl(priv, NB8800_RXC_CR);
 if (!!(rxcr & RCR_FL) == priv->pause_tx)
  return;

 if (netif_running(dev)) {
  napi_disable(&priv->napi);
  netif_tx_lock_bh(dev);
  nb8800_dma_stop(dev);
  nb8800_modl(priv, NB8800_RXC_CR, RCR_FL, priv->pause_tx);
  nb8800_start_rx(dev);
  netif_tx_unlock_bh(dev);
  napi_enable(&priv->napi);
 } else {
  nb8800_modl(priv, NB8800_RXC_CR, RCR_FL, priv->pause_tx);
 }
}
