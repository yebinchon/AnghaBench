
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_1__* bond; int dev; } ;
struct port {int is_enabled; int actor_port_number; int slave; } ;
struct aggregator {int dummy; } ;
struct TYPE_4__ {struct port port; } ;
struct TYPE_3__ {int dev; int mode_lock; } ;


 char BOND_LINK_UP ;
 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 struct aggregator* __get_first_agg (struct port*) ;
 int ad_agg_selection_logic (struct aggregator*,int*) ;
 int ad_update_actor_keys (struct port*,int) ;
 int bond_update_slave_arr (TYPE_1__*,int *) ;
 int slave_dbg (int ,int ,char*,int ,char*) ;
 int slave_warn (int ,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void bond_3ad_handle_link_change(struct slave *slave, char link)
{
 struct aggregator *agg;
 struct port *port;
 bool dummy;

 port = &(SLAVE_AD_INFO(slave)->port);


 if (!port->slave) {
  slave_warn(slave->bond->dev, slave->dev, "link status changed for uninitialized port\n");
  return;
 }

 spin_lock_bh(&slave->bond->mode_lock);







 if (link == BOND_LINK_UP) {
  port->is_enabled = 1;
  ad_update_actor_keys(port, 0);
 } else {

  port->is_enabled = 0;
  ad_update_actor_keys(port, 1);
 }
 agg = __get_first_agg(port);
 ad_agg_selection_logic(agg, &dummy);

 spin_unlock_bh(&slave->bond->mode_lock);

 slave_dbg(slave->bond->dev, slave->dev, "Port %d changed link status to %s\n",
    port->actor_port_number,
    link == BOND_LINK_UP ? "UP" : "DOWN");




 bond_update_slave_arr(slave->bond, ((void*)0));
}
