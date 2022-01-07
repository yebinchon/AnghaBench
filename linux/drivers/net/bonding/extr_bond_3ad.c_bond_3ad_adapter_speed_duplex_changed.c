
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int dev; TYPE_1__* bond; } ;
struct port {int actor_port_number; int slave; } ;
struct TYPE_4__ {struct port port; } ;
struct TYPE_3__ {int dev; int mode_lock; } ;


 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 int ad_update_actor_keys (struct port*,int) ;
 int slave_dbg (int ,int ,char*,int ) ;
 int slave_warn (int ,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void bond_3ad_adapter_speed_duplex_changed(struct slave *slave)
{
 struct port *port;

 port = &(SLAVE_AD_INFO(slave)->port);


 if (!port->slave) {
  slave_warn(slave->bond->dev, slave->dev,
      "speed/duplex changed for uninitialized port\n");
  return;
 }

 spin_lock_bh(&slave->bond->mode_lock);
 ad_update_actor_keys(port, 0);
 spin_unlock_bh(&slave->bond->mode_lock);
 slave_dbg(slave->bond->dev, slave->dev, "Port %d changed speed/duplex\n",
    port->actor_port_number);
}
