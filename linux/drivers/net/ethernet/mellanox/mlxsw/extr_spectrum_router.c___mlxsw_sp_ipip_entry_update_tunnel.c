
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_ipip_entry {TYPE_2__* ol_dev; TYPE_1__* ol_lb; scalar_t__ decap_fib_entry; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int common; } ;


 int IFF_UP ;
 int mlxsw_sp_ipip_entry_demote_decap (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_ipip_entry_ol_lb_update (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,struct netlink_ext_ack*) ;
 int mlxsw_sp_ipip_entry_ol_up_event (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_nexthop_rif_update (struct mlxsw_sp*,int *) ;

int __mlxsw_sp_ipip_entry_update_tunnel(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_ipip_entry *ipip_entry,
     bool recreate_loopback,
     bool keep_encap,
     bool update_nexthops,
     struct netlink_ext_ack *extack)
{
 int err;







 if (ipip_entry->decap_fib_entry)
  mlxsw_sp_ipip_entry_demote_decap(mlxsw_sp, ipip_entry);

 if (recreate_loopback) {
  err = mlxsw_sp_ipip_entry_ol_lb_update(mlxsw_sp, ipip_entry,
             keep_encap, extack);
  if (err)
   return err;
 } else if (update_nexthops) {
  mlxsw_sp_nexthop_rif_update(mlxsw_sp,
         &ipip_entry->ol_lb->common);
 }

 if (ipip_entry->ol_dev->flags & IFF_UP)
  mlxsw_sp_ipip_entry_ol_up_event(mlxsw_sp, ipip_entry);

 return 0;
}
