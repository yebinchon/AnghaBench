
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mlxsw_reg_qpdpm_dscp_entry_e_set (char*,unsigned short,int) ;
 int mlxsw_reg_qpdpm_dscp_entry_prio_set (char*,unsigned short,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_qpdpm_dscp_pack(char *payload, unsigned short dscp, u8 prio)
{
 mlxsw_reg_qpdpm_dscp_entry_e_set(payload, dscp, 1);
 mlxsw_reg_qpdpm_dscp_entry_prio_set(payload, dscp, prio);
}
