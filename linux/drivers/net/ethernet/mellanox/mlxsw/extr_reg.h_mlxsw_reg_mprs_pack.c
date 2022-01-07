
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mprs_parsing_depth_set (char*,int ) ;
 int mlxsw_reg_mprs_parsing_en_set (char*,int) ;
 int mlxsw_reg_mprs_vxlan_udp_dport_set (char*,int ) ;
 int mprs ;

__attribute__((used)) static inline void mlxsw_reg_mprs_pack(char *payload, u16 parsing_depth,
           u16 vxlan_udp_dport)
{
 MLXSW_REG_ZERO(mprs, payload);
 mlxsw_reg_mprs_parsing_depth_set(payload, parsing_depth);
 mlxsw_reg_mprs_parsing_en_set(payload, 1);
 mlxsw_reg_mprs_vxlan_udp_dport_set(payload, vxlan_udp_dport);
}
