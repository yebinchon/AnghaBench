
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ipip_entry {int ipip_list_node; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_ipip_entry_dealloc (struct mlxsw_sp_ipip_entry*) ;

__attribute__((used)) static void
mlxsw_sp_ipip_entry_destroy(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_ipip_entry *ipip_entry)
{
 list_del(&ipip_entry->ipip_list_node);
 mlxsw_sp_ipip_entry_dealloc(ipip_entry);
}
