
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_ritr_loopback_ipip_type { ____Placeholder_mlxsw_reg_ritr_loopback_ipip_type } mlxsw_reg_ritr_loopback_ipip_type ;
typedef enum mlxsw_reg_ritr_loopback_ipip_options { ____Placeholder_mlxsw_reg_ritr_loopback_ipip_options } mlxsw_reg_ritr_loopback_ipip_options ;


 int mlxsw_reg_ritr_loopback_ipip_gre_key_set (char*,int ) ;
 int mlxsw_reg_ritr_loopback_ipip_options_set (char*,int) ;
 int mlxsw_reg_ritr_loopback_ipip_type_set (char*,int) ;
 int mlxsw_reg_ritr_loopback_ipip_underlay_rif_set (char*,int ) ;
 int mlxsw_reg_ritr_loopback_ipip_uvr_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_ritr_loopback_ipip_common_pack(char *payload,
       enum mlxsw_reg_ritr_loopback_ipip_type ipip_type,
       enum mlxsw_reg_ritr_loopback_ipip_options options,
       u16 uvr_id, u16 underlay_rif, u32 gre_key)
{
 mlxsw_reg_ritr_loopback_ipip_type_set(payload, ipip_type);
 mlxsw_reg_ritr_loopback_ipip_options_set(payload, options);
 mlxsw_reg_ritr_loopback_ipip_uvr_set(payload, uvr_id);
 mlxsw_reg_ritr_loopback_ipip_underlay_rif_set(payload, underlay_rif);
 mlxsw_reg_ritr_loopback_ipip_gre_key_set(payload, gre_key);
}
