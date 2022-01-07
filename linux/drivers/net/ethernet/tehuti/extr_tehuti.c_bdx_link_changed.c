
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdx_priv {int ndev; } ;


 int MAC_LINK_STAT ;
 int READ_REG (struct bdx_priv*,int ) ;
 int netdev_err (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int regMAC_LNK_STAT ;

__attribute__((used)) static void bdx_link_changed(struct bdx_priv *priv)
{
 u32 link = READ_REG(priv, regMAC_LNK_STAT) & MAC_LINK_STAT;

 if (!link) {
  if (netif_carrier_ok(priv->ndev)) {
   netif_stop_queue(priv->ndev);
   netif_carrier_off(priv->ndev);
   netdev_err(priv->ndev, "Link Down\n");
  }
 } else {
  if (!netif_carrier_ok(priv->ndev)) {
   netif_wake_queue(priv->ndev);
   netif_carrier_on(priv->ndev);
   netdev_err(priv->ndev, "Link Up\n");
  }
 }
}
