
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_vxlan_data {int list; int port; int sa_family; } ;
struct TYPE_2__ {int vxn; } ;
struct xgbe_prv_data {int vxlan_port_count; int vxlan_force_disable; int vxlan_ports; TYPE_1__ hw_feat; } ;
struct udp_tunnel_info {scalar_t__ type; int port; int sa_family; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 int be16_to_cpu (int ) ;
 int drv ;
 struct xgbe_vxlan_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_dbg (struct xgbe_prv_data*,int ,struct net_device*,char*,...) ;
 int xgbe_disable_vxlan_accel (struct xgbe_prv_data*) ;
 int xgbe_enable_vxlan_accel (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_udp_tunnel_add(struct net_device *netdev,
    struct udp_tunnel_info *ti)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_vxlan_data *vdata;

 if (!pdata->hw_feat.vxn)
  return;

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;

 pdata->vxlan_port_count++;

 netif_dbg(pdata, drv, netdev,
    "adding VXLAN tunnel, family=%hx/port=%hx\n",
    ti->sa_family, be16_to_cpu(ti->port));

 if (pdata->vxlan_force_disable)
  return;

 vdata = kzalloc(sizeof(*vdata), GFP_ATOMIC);
 if (!vdata) {

  pdata->vxlan_force_disable = 1;
  netif_dbg(pdata, drv, netdev,
     "internal error, disabling VXLAN accelerations\n");

  xgbe_disable_vxlan_accel(pdata);

  return;
 }
 vdata->sa_family = ti->sa_family;
 vdata->port = ti->port;

 list_add_tail(&vdata->list, &pdata->vxlan_ports);


 if (pdata->vxlan_port_count == 1) {
  xgbe_enable_vxlan_accel(pdata);

  return;
 }
}
