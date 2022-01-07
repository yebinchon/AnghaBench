
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {char* dev_addr; } ;
struct mtk_mac {struct mtk_eth* hw; int id; } ;
struct mtk_eth {int page_lock; TYPE_1__* soc; int state; } ;
struct TYPE_2__ {int caps; } ;


 int EBUSY ;
 int MT7628_SDM_MAC_ADRH ;
 int MT7628_SDM_MAC_ADRL ;
 int MTK_GDMA_MAC_ADRH (int ) ;
 int MTK_GDMA_MAC_ADRL (int ) ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_RESETTING ;
 int MTK_SOC_MT7628 ;
 int eth_mac_addr (struct net_device*,void*) ;
 int mtk_w32 (struct mtk_eth*,char const,int ) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mtk_set_mac_address(struct net_device *dev, void *p)
{
 int ret = eth_mac_addr(dev, p);
 struct mtk_mac *mac = netdev_priv(dev);
 struct mtk_eth *eth = mac->hw;
 const char *macaddr = dev->dev_addr;

 if (ret)
  return ret;

 if (unlikely(test_bit(MTK_RESETTING, &mac->hw->state)))
  return -EBUSY;

 spin_lock_bh(&mac->hw->page_lock);
 if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
  mtk_w32(mac->hw, (macaddr[0] << 8) | macaddr[1],
   MT7628_SDM_MAC_ADRH);
  mtk_w32(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
   (macaddr[4] << 8) | macaddr[5],
   MT7628_SDM_MAC_ADRL);
 } else {
  mtk_w32(mac->hw, (macaddr[0] << 8) | macaddr[1],
   MTK_GDMA_MAC_ADRH(mac->id));
  mtk_w32(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
   (macaddr[4] << 8) | macaddr[5],
   MTK_GDMA_MAC_ADRL(mac->id));
 }
 spin_unlock_bh(&mac->hw->page_lock);

 return 0;
}
