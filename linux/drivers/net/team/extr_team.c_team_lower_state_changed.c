
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dev; int linkup; } ;
struct netdev_lag_lower_state_info {int tx_enabled; int link_up; } ;


 int netdev_lower_state_changed (int ,struct netdev_lag_lower_state_info*) ;
 int team_port_enabled (struct team_port*) ;

__attribute__((used)) static void team_lower_state_changed(struct team_port *port)
{
 struct netdev_lag_lower_state_info info;

 info.link_up = port->linkup;
 info.tx_enabled = team_port_enabled(port);
 netdev_lower_state_changed(port->dev, &info);
}
