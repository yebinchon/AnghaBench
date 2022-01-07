
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct team_port {TYPE_2__* dev; } ;
struct team {int dev; TYPE_1__* mode; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_lag_upper_info {int hash_type; int tx_type; } ;
struct TYPE_4__ {int priv_flags; } ;
struct TYPE_3__ {int lag_tx_type; } ;


 int IFF_TEAM_PORT ;
 int NETDEV_LAG_HASH_UNKNOWN ;
 int netdev_master_upper_dev_link (TYPE_2__*,int ,int *,struct netdev_lag_upper_info*,struct netlink_ext_ack*) ;

__attribute__((used)) static int team_upper_dev_link(struct team *team, struct team_port *port,
          struct netlink_ext_ack *extack)
{
 struct netdev_lag_upper_info lag_upper_info;
 int err;

 lag_upper_info.tx_type = team->mode->lag_tx_type;
 lag_upper_info.hash_type = NETDEV_LAG_HASH_UNKNOWN;
 err = netdev_master_upper_dev_link(port->dev, team->dev, ((void*)0),
        &lag_upper_info, extack);
 if (err)
  return err;
 port->dev->priv_flags |= IFF_TEAM_PORT;
 return 0;
}
