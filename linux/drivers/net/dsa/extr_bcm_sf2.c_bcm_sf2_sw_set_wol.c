
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_3__* ethtool_ops; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct dsa_switch {TYPE_2__* ports; } ;
struct bcm_sf2_priv {int wol_ports_mask; } ;
typedef int s8 ;
struct TYPE_6__ {int (* set_wol ) (struct net_device*,struct ethtool_wolinfo*) ;int (* get_wol ) (struct net_device*,struct ethtool_wolinfo*) ;} ;
struct TYPE_5__ {TYPE_1__* cpu_dp; } ;
struct TYPE_4__ {int index; struct net_device* master; } ;


 int EINVAL ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int stub1 (struct net_device*,struct ethtool_wolinfo*) ;
 int stub2 (struct net_device*,struct ethtool_wolinfo*) ;

__attribute__((used)) static int bcm_sf2_sw_set_wol(struct dsa_switch *ds, int port,
         struct ethtool_wolinfo *wol)
{
 struct net_device *p = ds->ports[port].cpu_dp->master;
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 s8 cpu_port = ds->ports[port].cpu_dp->index;
 struct ethtool_wolinfo pwol = { };

 if (p->ethtool_ops->get_wol)
  p->ethtool_ops->get_wol(p, &pwol);
 if (wol->wolopts & ~pwol.supported)
  return -EINVAL;

 if (wol->wolopts)
  priv->wol_ports_mask |= (1 << port);
 else
  priv->wol_ports_mask &= ~(1 << port);





 if (priv->wol_ports_mask && priv->wol_ports_mask != (1 << cpu_port))
  priv->wol_ports_mask |= (1 << cpu_port);
 else
  priv->wol_ports_mask &= ~(1 << cpu_port);

 return p->ethtool_ops->set_wol(p, wol);
}
