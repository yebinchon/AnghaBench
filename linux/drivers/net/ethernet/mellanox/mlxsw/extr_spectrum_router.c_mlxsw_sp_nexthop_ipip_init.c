
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_nexthop {struct mlxsw_sp_ipip_entry* ipip_entry; TYPE_1__* nh_grp; } ;
struct mlxsw_sp_ipip_entry {TYPE_2__* ol_lb; int ol_dev; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int common; } ;
struct TYPE_3__ {int gateway; } ;


 int __mlxsw_sp_nexthop_neigh_update (struct mlxsw_sp_nexthop*,int) ;
 int mlxsw_sp_ipip_netdev_ul_up (int ) ;
 int mlxsw_sp_nexthop_rif_init (struct mlxsw_sp_nexthop*,int *) ;

__attribute__((used)) static void mlxsw_sp_nexthop_ipip_init(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_nexthop *nh,
           struct mlxsw_sp_ipip_entry *ipip_entry)
{
 bool removing;

 if (!nh->nh_grp->gateway || nh->ipip_entry)
  return;

 nh->ipip_entry = ipip_entry;
 removing = !mlxsw_sp_ipip_netdev_ul_up(ipip_entry->ol_dev);
 __mlxsw_sp_nexthop_neigh_update(nh, removing);
 mlxsw_sp_nexthop_rif_init(nh, &ipip_entry->ol_lb->common);
}
