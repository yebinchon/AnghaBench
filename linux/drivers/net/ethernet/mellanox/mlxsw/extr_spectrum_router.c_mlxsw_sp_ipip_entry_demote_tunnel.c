
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct mlxsw_sp_ipip_entry {struct net_device* ol_dev; } ;
struct mlxsw_sp {int dummy; } ;


 int IFF_UP ;
 int mlxsw_sp_ipip_entry_destroy (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_ipip_entry_ol_down_event (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;

void mlxsw_sp_ipip_entry_demote_tunnel(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_ipip_entry *ipip_entry)
{
 struct net_device *ol_dev = ipip_entry->ol_dev;

 if (ol_dev->flags & IFF_UP)
  mlxsw_sp_ipip_entry_ol_down_event(mlxsw_sp, ipip_entry);
 mlxsw_sp_ipip_entry_destroy(mlxsw_sp, ipip_entry);
}
