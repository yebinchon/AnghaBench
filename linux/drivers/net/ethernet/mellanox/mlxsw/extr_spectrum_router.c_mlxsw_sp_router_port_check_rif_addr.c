
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dev_addr; } ;
struct mlxsw_sp_rif {struct net_device* dev; } ;
struct mlxsw_sp {int mac_mask; TYPE_1__* router; int core; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;


 int EINVAL ;
 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int ether_addr_equal_masked (int ,unsigned char const*,int ) ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 scalar_t__ netif_is_macvlan (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_router_port_check_rif_addr(struct mlxsw_sp *mlxsw_sp,
            struct net_device *dev,
            const unsigned char *dev_addr,
            struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_rif *rif;
 int i;




 if (netif_is_macvlan(dev) || netif_is_l3_master(dev))
  return 0;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS); i++) {
  rif = mlxsw_sp->router->rifs[i];
  if (rif && rif->dev && rif->dev != dev &&
      !ether_addr_equal_masked(rif->dev->dev_addr, dev_addr,
          mlxsw_sp->mac_mask)) {
   NL_SET_ERR_MSG_MOD(extack, "All router interface MAC addresses must have the same prefix");
   return -EINVAL;
  }
 }

 return 0;
}
