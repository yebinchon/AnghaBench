
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_entry {int ipip_list_node; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
typedef enum mlxsw_sp_ipip_type { ____Placeholder_mlxsw_sp_ipip_type } mlxsw_sp_ipip_type ;
struct TYPE_2__ {int ipip_list; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_ipip_entry*) ;
 int list_add_tail (int *,int *) ;
 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_alloc (struct mlxsw_sp*,int,struct net_device*) ;

__attribute__((used)) static struct mlxsw_sp_ipip_entry *
mlxsw_sp_ipip_entry_create(struct mlxsw_sp *mlxsw_sp,
      enum mlxsw_sp_ipip_type ipipt,
      struct net_device *ol_dev)
{
 struct mlxsw_sp_ipip_entry *ipip_entry;

 ipip_entry = mlxsw_sp_ipip_entry_alloc(mlxsw_sp, ipipt, ol_dev);
 if (IS_ERR(ipip_entry))
  return ipip_entry;

 list_add_tail(&ipip_entry->ipip_list_node,
        &mlxsw_sp->router->ipip_list);

 return ipip_entry;
}
