
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {struct net_device* bridge_dev; } ;
struct net_device {int dummy; } ;


 int ofdpa_port_fwd_disable (struct ofdpa_port*,int ) ;
 int ofdpa_port_fwd_enable (struct ofdpa_port*,int ) ;

__attribute__((used)) static int ofdpa_port_ovs_changed(struct ofdpa_port *ofdpa_port,
      struct net_device *master)
{
 int err;

 ofdpa_port->bridge_dev = master;

 err = ofdpa_port_fwd_disable(ofdpa_port, 0);
 if (err)
  return err;
 err = ofdpa_port_fwd_enable(ofdpa_port, 0);

 return err;
}
