
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct hisi_femac_priv {int dummy; } ;


 int IFF_PROMISC ;
 int hisi_femac_set_mc_addr_filter (struct hisi_femac_priv*) ;
 int hisi_femac_set_promisc_mode (struct hisi_femac_priv*,int) ;
 int hisi_femac_set_uc_addr_filter (struct hisi_femac_priv*) ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hisi_femac_net_set_rx_mode(struct net_device *dev)
{
 struct hisi_femac_priv *priv = netdev_priv(dev);

 if (dev->flags & IFF_PROMISC) {
  hisi_femac_set_promisc_mode(priv, 1);
 } else {
  hisi_femac_set_promisc_mode(priv, 0);
  hisi_femac_set_mc_addr_filter(priv);
  hisi_femac_set_uc_addr_filter(priv);
 }
}
