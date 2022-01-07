
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_mpat_span_type { ____Placeholder_mlxsw_reg_mpat_span_type } mlxsw_reg_mpat_span_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mpat_be_set (char*,int) ;
 int mlxsw_reg_mpat_e_set (char*,int) ;
 int mlxsw_reg_mpat_pa_id_set (char*,int ) ;
 int mlxsw_reg_mpat_qos_set (char*,int) ;
 int mlxsw_reg_mpat_span_type_set (char*,int) ;
 int mlxsw_reg_mpat_system_port_set (char*,int ) ;
 int mpat ;

__attribute__((used)) static inline void mlxsw_reg_mpat_pack(char *payload, u8 pa_id,
           u16 system_port, bool e,
           enum mlxsw_reg_mpat_span_type span_type)
{
 MLXSW_REG_ZERO(mpat, payload);
 mlxsw_reg_mpat_pa_id_set(payload, pa_id);
 mlxsw_reg_mpat_system_port_set(payload, system_port);
 mlxsw_reg_mpat_e_set(payload, e);
 mlxsw_reg_mpat_qos_set(payload, 1);
 mlxsw_reg_mpat_be_set(payload, 1);
 mlxsw_reg_mpat_span_type_set(payload, span_type);
}
