
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct net_device {int dummy; } ;
struct gswip_priv {TYPE_3__* vlans; TYPE_1__* hw_info; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
struct TYPE_6__ {scalar_t__ vid; struct net_device* bridge; } ;
struct TYPE_5__ {struct net_device* bridge_dev; } ;
struct TYPE_4__ {unsigned int max_ports; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int dsa_is_cpu_port (struct dsa_switch*,int) ;
 TYPE_2__* dsa_to_port (struct dsa_switch*,int) ;

__attribute__((used)) static int gswip_port_vlan_prepare(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct gswip_priv *priv = ds->priv;
 struct net_device *bridge = dsa_to_port(ds, port)->bridge_dev;
 unsigned int max_ports = priv->hw_info->max_ports;
 u16 vid;
 int i;
 int pos = max_ports;


 if (!dsa_is_cpu_port(ds, port) && !bridge)
  return -EOPNOTSUPP;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  int idx = -1;


  for (i = max_ports; i < ARRAY_SIZE(priv->vlans); i++) {
   if (priv->vlans[i].bridge == bridge &&
       priv->vlans[i].vid == vid) {
    idx = i;
    break;
   }
  }





  if (idx == -1) {

   for (; pos < ARRAY_SIZE(priv->vlans); pos++) {
    if (!priv->vlans[pos].bridge) {
     idx = pos;
     pos++;
     break;
    }
   }

   if (idx == -1)
    return -ENOSPC;
  }
 }

 return 0;
}
