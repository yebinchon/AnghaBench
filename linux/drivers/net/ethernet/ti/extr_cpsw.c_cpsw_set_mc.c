
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cpsw_priv {size_t emac_port; struct cpsw_common* cpsw; } ;
struct TYPE_4__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int ale; TYPE_2__ data; TYPE_1__* slaves; } ;
struct TYPE_3__ {int port_vlan; } ;


 int ALE_ALL_PORTS ;
 int ALE_PORT_HOST ;
 int ALE_VLAN ;
 int cpsw_ale_add_mcast (int ,int const*,int,int,int,int ) ;
 int cpsw_ale_del_mcast (int ,int const*,int ,int,int) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cpsw_set_mc(struct net_device *ndev, const u8 *addr,
         int vid, int add)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int mask, flags, ret;

 if (vid < 0) {
  if (cpsw->data.dual_emac)
   vid = cpsw->slaves[priv->emac_port].port_vlan;
  else
   vid = 0;
 }

 mask = cpsw->data.dual_emac ? ALE_PORT_HOST : ALE_ALL_PORTS;
 flags = vid ? ALE_VLAN : 0;

 if (add)
  ret = cpsw_ale_add_mcast(cpsw->ale, addr, mask, flags, vid, 0);
 else
  ret = cpsw_ale_del_mcast(cpsw->ale, addr, 0, flags, vid);

 return ret;
}
