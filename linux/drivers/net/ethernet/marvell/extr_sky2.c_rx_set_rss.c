
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_port {size_t port; struct sky2_hw* hw; } ;
struct sky2_hw {int flags; } ;
struct net_device {int dummy; } ;
typedef int rss_key ;
typedef int netdev_features_t ;


 int BMU_DIS_RX_RSS_HASH ;
 int BMU_ENA_RX_RSS_HASH ;
 int HASH_ALL ;
 int NETIF_F_RXHASH ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 scalar_t__ RSS_CFG ;
 scalar_t__ RSS_KEY ;
 scalar_t__ RX_GMF_CTRL_T ;
 int RX_STFW_ENA ;
 int SKY2_HW_NEW_LE ;
 int SK_REG (size_t,scalar_t__) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netdev_rss_key_fill (int *,int) ;
 int * rxqaddr ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void rx_set_rss(struct net_device *dev, netdev_features_t features)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 int i, nkeys = 4;


 if (hw->flags & SKY2_HW_NEW_LE) {
  nkeys = 10;
  sky2_write32(hw, SK_REG(sky2->port, RSS_CFG), HASH_ALL);
 }


 if (features & NETIF_F_RXHASH) {
  u32 rss_key[10];

  netdev_rss_key_fill(rss_key, sizeof(rss_key));
  for (i = 0; i < nkeys; i++)
   sky2_write32(hw, SK_REG(sky2->port, RSS_KEY + i * 4),
         rss_key[i]);


  sky2_write32(hw, SK_REG(sky2->port, RX_GMF_CTRL_T),
        RX_STFW_ENA);

  sky2_write32(hw, Q_ADDR(rxqaddr[sky2->port], Q_CSR),
        BMU_ENA_RX_RSS_HASH);
 } else
  sky2_write32(hw, Q_ADDR(rxqaddr[sky2->port], Q_CSR),
        BMU_DIS_RX_RSS_HASH);
}
