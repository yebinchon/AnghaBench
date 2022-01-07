
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bgmac_dma_ring {int dummy; } ;
struct bgmac {struct bgmac_dma_ring* tx_ring; } ;
typedef int netdev_tx_t ;


 int bgmac_dma_tx_add (struct bgmac*,struct bgmac_dma_ring*,struct sk_buff*) ;
 struct bgmac* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_tx_t bgmac_start_xmit(struct sk_buff *skb,
        struct net_device *net_dev)
{
 struct bgmac *bgmac = netdev_priv(net_dev);
 struct bgmac_dma_ring *ring;


 ring = &bgmac->tx_ring[0];
 return bgmac_dma_tx_add(bgmac, ring, skb);
}
