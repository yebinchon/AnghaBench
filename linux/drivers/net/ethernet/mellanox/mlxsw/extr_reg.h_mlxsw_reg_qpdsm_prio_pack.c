
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mlxsw_reg_qpdsm_prio_entry_color0_dscp_set (char*,unsigned short,int ) ;
 int mlxsw_reg_qpdsm_prio_entry_color0_e_set (char*,unsigned short,int) ;
 int mlxsw_reg_qpdsm_prio_entry_color1_dscp_set (char*,unsigned short,int ) ;
 int mlxsw_reg_qpdsm_prio_entry_color1_e_set (char*,unsigned short,int) ;
 int mlxsw_reg_qpdsm_prio_entry_color2_dscp_set (char*,unsigned short,int ) ;
 int mlxsw_reg_qpdsm_prio_entry_color2_e_set (char*,unsigned short,int) ;

__attribute__((used)) static inline void
mlxsw_reg_qpdsm_prio_pack(char *payload, unsigned short prio, u8 dscp)
{
 mlxsw_reg_qpdsm_prio_entry_color0_e_set(payload, prio, 1);
 mlxsw_reg_qpdsm_prio_entry_color0_dscp_set(payload, prio, dscp);
 mlxsw_reg_qpdsm_prio_entry_color1_e_set(payload, prio, 1);
 mlxsw_reg_qpdsm_prio_entry_color1_dscp_set(payload, prio, dscp);
 mlxsw_reg_qpdsm_prio_entry_color2_e_set(payload, prio, 1);
 mlxsw_reg_qpdsm_prio_entry_color2_dscp_set(payload, prio, dscp);
}
