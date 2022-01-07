
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rauht_mac_memcpy_to (char*,char const*) ;
 int mlxsw_reg_rauht_op_set (char*,int) ;
 int mlxsw_reg_rauht_rif_set (char*,int ) ;
 int rauht ;

__attribute__((used)) static inline void mlxsw_reg_rauht_pack(char *payload,
     enum mlxsw_reg_rauht_op op, u16 rif,
     const char *mac)
{
 MLXSW_REG_ZERO(rauht, payload);
 mlxsw_reg_rauht_op_set(payload, op);
 mlxsw_reg_rauht_rif_set(payload, rif);
 mlxsw_reg_rauht_mac_memcpy_to(payload, mac);
}
