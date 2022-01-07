
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_ipip_entry {TYPE_1__* ol_lb; } ;
struct TYPE_2__ {int common; } ;


 int kfree (struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_rif_destroy (int *) ;

__attribute__((used)) static void
mlxsw_sp_ipip_entry_dealloc(struct mlxsw_sp_ipip_entry *ipip_entry)
{
 mlxsw_sp_rif_destroy(&ipip_entry->ol_lb->common);
 kfree(ipip_entry);
}
