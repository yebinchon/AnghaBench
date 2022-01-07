
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_3__* ethtool_ops; } ;
struct ethtool_wolinfo {int wolopts; int sopass; int supported; } ;
struct dsa_switch {TYPE_2__* ports; } ;
struct bcm_sf2_priv {int wol_ports_mask; } ;
struct TYPE_6__ {int (* get_wol ) (struct net_device*,struct ethtool_wolinfo*) ;} ;
struct TYPE_5__ {TYPE_1__* cpu_dp; } ;
struct TYPE_4__ {struct net_device* master; } ;


 int WAKE_MAGICSECURE ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int stub1 (struct net_device*,struct ethtool_wolinfo*) ;

__attribute__((used)) static void bcm_sf2_sw_get_wol(struct dsa_switch *ds, int port,
          struct ethtool_wolinfo *wol)
{
 struct net_device *p = ds->ports[port].cpu_dp->master;
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 struct ethtool_wolinfo pwol = { };


 if (p->ethtool_ops->get_wol)
  p->ethtool_ops->get_wol(p, &pwol);


 wol->supported = pwol.supported;
 memset(&wol->sopass, 0, sizeof(wol->sopass));

 if (pwol.wolopts & WAKE_MAGICSECURE)
  memcpy(&wol->sopass, pwol.sopass, sizeof(wol->sopass));

 if (priv->wol_ports_mask & (1 << port))
  wol->wolopts = pwol.wolopts;
 else
  wol->wolopts = 0;
}
