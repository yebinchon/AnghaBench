
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_priv {int dummy; } ;
struct gbe_intf {TYPE_1__* slave; struct gbe_priv* gbe_dev; } ;
struct TYPE_2__ {int open; int link_state; } ;


 int GBE_RXHOOK_ORDER ;
 int GBE_TXHOOK_ORDER ;
 int NETCP_LINK_STATE_INVALID ;
 int atomic_set (int *,int ) ;
 int gbe_rxhook ;
 int gbe_slave_stop (struct gbe_intf*) ;
 int gbe_txhook ;
 int gbe_unregister_cpts (struct gbe_priv*) ;
 int netcp_unregister_rxhook (struct netcp_intf*,int ,int ,struct gbe_intf*) ;
 int netcp_unregister_txhook (struct netcp_intf*,int ,int ,struct gbe_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gbe_close(void *intf_priv, struct net_device *ndev)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

 gbe_unregister_cpts(gbe_dev);

 gbe_slave_stop(gbe_intf);

 netcp_unregister_rxhook(netcp, GBE_RXHOOK_ORDER, gbe_rxhook, gbe_intf);
 netcp_unregister_txhook(netcp, GBE_TXHOOK_ORDER, gbe_txhook, gbe_intf);

 gbe_intf->slave->open = 0;
 atomic_set(&gbe_intf->slave->link_state, NETCP_LINK_STATE_INVALID);
 return 0;
}
