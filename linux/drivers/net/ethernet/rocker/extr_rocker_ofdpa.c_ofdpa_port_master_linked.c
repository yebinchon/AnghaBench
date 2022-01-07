
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ netif_is_bridge_master (struct net_device*) ;
 scalar_t__ netif_is_ovs_master (struct net_device*) ;
 int ofdpa_port_bridge_join (struct ofdpa_port*,struct net_device*) ;
 int ofdpa_port_ovs_changed (struct ofdpa_port*,struct net_device*) ;

__attribute__((used)) static int ofdpa_port_master_linked(struct rocker_port *rocker_port,
        struct net_device *master)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 int err = 0;

 if (netif_is_bridge_master(master))
  err = ofdpa_port_bridge_join(ofdpa_port, master);
 else if (netif_is_ovs_master(master))
  err = ofdpa_port_ovs_changed(ofdpa_port, master);
 return err;
}
