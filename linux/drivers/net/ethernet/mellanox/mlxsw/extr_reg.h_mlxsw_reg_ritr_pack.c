
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;


 int MLXSW_REG_RITR_RIF_CREATE ;
 int MLXSW_REG_RITR_RIF_DEL ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ritr_enable_set (char*,int) ;
 int mlxsw_reg_ritr_ipv4_fe_set (char*,int) ;
 int mlxsw_reg_ritr_ipv4_mc_fe_set (char*,int) ;
 int mlxsw_reg_ritr_ipv4_mc_set (char*,int) ;
 int mlxsw_reg_ritr_ipv4_set (char*,int) ;
 int mlxsw_reg_ritr_ipv6_fe_set (char*,int) ;
 int mlxsw_reg_ritr_ipv6_mc_fe_set (char*,int) ;
 int mlxsw_reg_ritr_ipv6_mc_set (char*,int) ;
 int mlxsw_reg_ritr_ipv6_set (char*,int) ;
 int mlxsw_reg_ritr_lb_en_set (char*,int) ;
 int mlxsw_reg_ritr_mtu_set (char*,int ) ;
 int mlxsw_reg_ritr_op_set (char*,int) ;
 int mlxsw_reg_ritr_rif_set (char*,int ) ;
 int mlxsw_reg_ritr_type_set (char*,int) ;
 int mlxsw_reg_ritr_virtual_router_set (char*,int ) ;
 int ritr ;

__attribute__((used)) static inline void mlxsw_reg_ritr_pack(char *payload, bool enable,
           enum mlxsw_reg_ritr_if_type type,
           u16 rif, u16 vr_id, u16 mtu)
{
 bool op = enable ? MLXSW_REG_RITR_RIF_CREATE : MLXSW_REG_RITR_RIF_DEL;

 MLXSW_REG_ZERO(ritr, payload);
 mlxsw_reg_ritr_enable_set(payload, enable);
 mlxsw_reg_ritr_ipv4_set(payload, 1);
 mlxsw_reg_ritr_ipv6_set(payload, 1);
 mlxsw_reg_ritr_ipv4_mc_set(payload, 1);
 mlxsw_reg_ritr_ipv6_mc_set(payload, 1);
 mlxsw_reg_ritr_type_set(payload, type);
 mlxsw_reg_ritr_op_set(payload, op);
 mlxsw_reg_ritr_rif_set(payload, rif);
 mlxsw_reg_ritr_ipv4_fe_set(payload, 1);
 mlxsw_reg_ritr_ipv6_fe_set(payload, 1);
 mlxsw_reg_ritr_ipv4_mc_fe_set(payload, 1);
 mlxsw_reg_ritr_ipv6_mc_fe_set(payload, 1);
 mlxsw_reg_ritr_lb_en_set(payload, 1);
 mlxsw_reg_ritr_virtual_router_set(payload, vr_id);
 mlxsw_reg_ritr_mtu_set(payload, mtu);
}
