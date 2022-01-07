
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mwifiex_private {TYPE_2__* adapter; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct TYPE_3__ {int conditions; } ;
struct TYPE_4__ {TYPE_1__ hs_cfg; } ;


 int HS_CFG_COND_BROADCAST_DATA ;
 int HS_CFG_COND_DEF ;
 int HS_CFG_COND_MAC_EVENT ;
 int HS_CFG_COND_MULTICAST_DATA ;
 int HS_CFG_COND_UNICAST_DATA ;
 int WAKE_BCAST ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int le32_to_cpu (int ) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static void mwifiex_ethtool_get_wol(struct net_device *dev,
        struct ethtool_wolinfo *wol)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 u32 conditions = le32_to_cpu(priv->adapter->hs_cfg.conditions);

 wol->supported = WAKE_UCAST|WAKE_MCAST|WAKE_BCAST|WAKE_PHY;

 if (conditions == HS_CFG_COND_DEF)
  return;

 if (conditions & HS_CFG_COND_UNICAST_DATA)
  wol->wolopts |= WAKE_UCAST;
 if (conditions & HS_CFG_COND_MULTICAST_DATA)
  wol->wolopts |= WAKE_MCAST;
 if (conditions & HS_CFG_COND_BROADCAST_DATA)
  wol->wolopts |= WAKE_BCAST;
 if (conditions & HS_CFG_COND_MAC_EVENT)
  wol->wolopts |= WAKE_PHY;
}
