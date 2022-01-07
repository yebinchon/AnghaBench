
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {int link; int duplex; } ;
struct dsa_switch {TYPE_1__* ports; } ;
struct bcm_sf2_priv {int moca_port; TYPE_2__* port_sts; } ;
struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int slave; } ;


 int DUPLEX_FULL ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static void bcm_sf2_sw_fixed_state(struct dsa_switch *ds, int port,
       struct phylink_link_state *status)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);

 status->link = 0;
 if (port == priv->moca_port) {
  status->link = priv->port_sts[port].link;





  if (!status->link)
   netif_carrier_off(ds->ports[port].slave);
  status->duplex = DUPLEX_FULL;
 } else {
  status->link = 1;
 }
}
