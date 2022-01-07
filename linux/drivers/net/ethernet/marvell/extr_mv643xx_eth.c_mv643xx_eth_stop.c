
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; scalar_t__ phydev; } ;
struct mv643xx_eth_private {int rxq_count; int txq_count; scalar_t__ txq; scalar_t__ rxq; int mib_counters_timer; int rx_oom; int napi; } ;


 int INT_MASK ;
 int INT_MASK_EXT ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int mib_counters_update (struct mv643xx_eth_private*) ;
 int mv643xx_eth_get_stats (struct net_device*) ;
 int napi_disable (int *) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int port_reset (struct mv643xx_eth_private*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int rxq_deinit (scalar_t__) ;
 int txq_deinit (scalar_t__) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static int mv643xx_eth_stop(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);
 int i;

 wrlp(mp, INT_MASK_EXT, 0x00000000);
 wrlp(mp, INT_MASK, 0x00000000);
 rdlp(mp, INT_MASK);

 napi_disable(&mp->napi);

 del_timer_sync(&mp->rx_oom);

 netif_carrier_off(dev);
 if (dev->phydev)
  phy_stop(dev->phydev);
 free_irq(dev->irq, dev);

 port_reset(mp);
 mv643xx_eth_get_stats(dev);
 mib_counters_update(mp);
 del_timer_sync(&mp->mib_counters_timer);

 for (i = 0; i < mp->rxq_count; i++)
  rxq_deinit(mp->rxq + i);
 for (i = 0; i < mp->txq_count; i++)
  txq_deinit(mp->txq + i);

 return 0;
}
