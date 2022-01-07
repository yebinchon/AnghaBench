
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct TYPE_2__ {int addr6_kvdl_index; } ;
struct mlxsw_sp_nve_mc_entry {TYPE_1__ ipv6_entry; } ;


 int mlxsw_reg_tnumt_udip_ptr_set (char*,unsigned int,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_ipv6_entry_set(const struct mlxsw_sp_nve_mc_record *mc_record,
          const struct mlxsw_sp_nve_mc_entry *mc_entry,
          char *tnumt_pl, unsigned int entry_index)
{
 u32 udip_ptr = mc_entry->ipv6_entry.addr6_kvdl_index;

 mlxsw_reg_tnumt_udip_ptr_set(tnumt_pl, entry_index, udip_ptr);
}
