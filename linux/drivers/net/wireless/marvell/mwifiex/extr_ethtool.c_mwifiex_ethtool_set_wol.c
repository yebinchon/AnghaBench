
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mwifiex_private {TYPE_2__* adapter; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_3__ {int conditions; } ;
struct TYPE_4__ {TYPE_1__ hs_cfg; } ;


 int EOPNOTSUPP ;
 int HS_CFG_COND_BROADCAST_DATA ;
 int HS_CFG_COND_DEF ;
 int HS_CFG_COND_MAC_EVENT ;
 int HS_CFG_COND_MULTICAST_DATA ;
 int HS_CFG_COND_UNICAST_DATA ;
 int WAKE_BCAST ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int cpu_to_le32 (int ) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int mwifiex_ethtool_set_wol(struct net_device *dev,
       struct ethtool_wolinfo *wol)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 u32 conditions = 0;

 if (wol->wolopts & ~(WAKE_UCAST|WAKE_MCAST|WAKE_BCAST|WAKE_PHY))
  return -EOPNOTSUPP;

 if (wol->wolopts & WAKE_UCAST)
  conditions |= HS_CFG_COND_UNICAST_DATA;
 if (wol->wolopts & WAKE_MCAST)
  conditions |= HS_CFG_COND_MULTICAST_DATA;
 if (wol->wolopts & WAKE_BCAST)
  conditions |= HS_CFG_COND_BROADCAST_DATA;
 if (wol->wolopts & WAKE_PHY)
  conditions |= HS_CFG_COND_MAC_EVENT;
 if (wol->wolopts == 0)
  conditions |= HS_CFG_COND_DEF;
 priv->adapter->hs_cfg.conditions = cpu_to_le32(conditions);

 return 0;
}
