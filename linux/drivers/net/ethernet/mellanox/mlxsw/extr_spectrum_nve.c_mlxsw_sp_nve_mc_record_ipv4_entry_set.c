
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_entry {int addr4; } ;


 int be32_to_cpu (int ) ;
 int mlxsw_reg_tnumt_udip_set (char*,unsigned int,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_record_ipv4_entry_set(const struct mlxsw_sp_nve_mc_record *mc_record,
          const struct mlxsw_sp_nve_mc_entry *mc_entry,
          char *tnumt_pl, unsigned int entry_index)
{
 u32 udip = be32_to_cpu(mc_entry->addr4);

 mlxsw_reg_tnumt_udip_set(tnumt_pl, entry_index, udip);
}
