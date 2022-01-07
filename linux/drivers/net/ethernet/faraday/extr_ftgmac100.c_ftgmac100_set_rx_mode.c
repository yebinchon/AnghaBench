
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftgmac100 {scalar_t__ base; int maht1; int maht0; } ;


 scalar_t__ FTGMAC100_OFFSET_MAHT0 ;
 scalar_t__ FTGMAC100_OFFSET_MAHT1 ;
 int ftgmac100_calc_mc_hash (struct ftgmac100*) ;
 int ftgmac100_start_hw (struct ftgmac100*) ;
 int iowrite32 (int ,scalar_t__) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static void ftgmac100_set_rx_mode(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);


 ftgmac100_calc_mc_hash(priv);


 if (!netif_running(netdev))
  return;


 iowrite32(priv->maht0, priv->base + FTGMAC100_OFFSET_MAHT0);
 iowrite32(priv->maht1, priv->base + FTGMAC100_OFFSET_MAHT1);


 ftgmac100_start_hw(priv);
}
