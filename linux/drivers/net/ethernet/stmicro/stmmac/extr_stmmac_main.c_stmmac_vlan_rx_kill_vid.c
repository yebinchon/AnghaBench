
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vlhash; } ;
struct stmmac_priv {int active_vlans; TYPE_1__ dma_cap; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 scalar_t__ ETH_P_8021AD ;
 scalar_t__ be16_to_cpu (int ) ;
 int clear_bit (int ,int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_vlan_update (struct stmmac_priv*,int) ;

__attribute__((used)) static int stmmac_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vid)
{
 struct stmmac_priv *priv = netdev_priv(ndev);
 bool is_double = 0;

 if (!priv->dma_cap.vlhash)
  return -EOPNOTSUPP;
 if (be16_to_cpu(proto) == ETH_P_8021AD)
  is_double = 1;

 clear_bit(vid, priv->active_vlans);
 return stmmac_vlan_update(priv, is_double);
}
