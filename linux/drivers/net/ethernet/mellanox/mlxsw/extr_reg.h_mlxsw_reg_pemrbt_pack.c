
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_pemrbt_protocol { ____Placeholder_mlxsw_reg_pemrbt_protocol } mlxsw_reg_pemrbt_protocol ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pemrbt_group_id_set (char*,int ) ;
 int mlxsw_reg_pemrbt_protocol_set (char*,int) ;
 int pemrbt ;

__attribute__((used)) static inline void
mlxsw_reg_pemrbt_pack(char *payload, enum mlxsw_reg_pemrbt_protocol protocol,
        u16 group_id)
{
 MLXSW_REG_ZERO(pemrbt, payload);
 mlxsw_reg_pemrbt_protocol_set(payload, protocol);
 mlxsw_reg_pemrbt_group_id_set(payload, group_id);
}
