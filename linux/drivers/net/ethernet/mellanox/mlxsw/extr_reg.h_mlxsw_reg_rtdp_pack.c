
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_reg_rtdp_type { ____Placeholder_mlxsw_reg_rtdp_type } mlxsw_reg_rtdp_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rtdp_tunnel_index_set (char*,int ) ;
 int mlxsw_reg_rtdp_type_set (char*,int) ;
 int rtdp ;

__attribute__((used)) static inline void mlxsw_reg_rtdp_pack(char *payload,
           enum mlxsw_reg_rtdp_type type,
           u32 tunnel_index)
{
 MLXSW_REG_ZERO(rtdp, payload);
 mlxsw_reg_rtdp_type_set(payload, type);
 mlxsw_reg_rtdp_tunnel_index_set(payload, tunnel_index);
}
