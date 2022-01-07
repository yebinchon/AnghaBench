
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nfp_port {TYPE_1__* app; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_eth_table_port {int lanes; int index; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ autoneg; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {int cpp; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EBUSY ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int NFP_ANEG_AUTO ;
 int NFP_ANEG_DISABLED ;
 int PTR_ERR (struct nfp_nsp*) ;
 int SPEED_UNKNOWN ;
 int __nfp_eth_set_aneg (struct nfp_nsp*,int ) ;
 int __nfp_eth_set_speed (struct nfp_nsp*,int) ;
 struct nfp_eth_table_port* __nfp_port_get_eth_port (struct nfp_port*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int nfp_eth_config_cleanup_end (struct nfp_nsp*) ;
 int nfp_eth_config_commit_end (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_eth_config_start (int ,int ) ;
 int nfp_net_refresh_port_table (struct nfp_port*) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

__attribute__((used)) static int
nfp_net_set_link_ksettings(struct net_device *netdev,
      const struct ethtool_link_ksettings *cmd)
{
 struct nfp_eth_table_port *eth_port;
 struct nfp_port *port;
 struct nfp_nsp *nsp;
 int err;

 port = nfp_port_from_netdev(netdev);
 eth_port = __nfp_port_get_eth_port(port);
 if (!eth_port)
  return -EOPNOTSUPP;

 if (netif_running(netdev)) {
  netdev_warn(netdev, "Changing settings not allowed on an active interface. It may cause the port to be disabled until driver reload.\n");
  return -EBUSY;
 }

 nsp = nfp_eth_config_start(port->app->cpp, eth_port->index);
 if (IS_ERR(nsp))
  return PTR_ERR(nsp);

 err = __nfp_eth_set_aneg(nsp, cmd->base.autoneg == AUTONEG_ENABLE ?
     NFP_ANEG_AUTO : NFP_ANEG_DISABLED);
 if (err)
  goto err_bad_set;
 if (cmd->base.speed != SPEED_UNKNOWN) {
  u32 speed = cmd->base.speed / eth_port->lanes;

  err = __nfp_eth_set_speed(nsp, speed);
  if (err)
   goto err_bad_set;
 }

 err = nfp_eth_config_commit_end(nsp);
 if (err > 0)
  return 0;

 nfp_net_refresh_port_table(port);

 return err;

err_bad_set:
 nfp_eth_config_cleanup_end(nsp);
 return err;
}
