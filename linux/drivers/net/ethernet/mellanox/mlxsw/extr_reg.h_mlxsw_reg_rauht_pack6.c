
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;


 int MLXSW_REG_RAUHT_TYPE_IPV6 ;
 int mlxsw_reg_rauht_dip6_memcpy_to (char*,char const*) ;
 int mlxsw_reg_rauht_pack (char*,int,int ,char const*) ;
 int mlxsw_reg_rauht_type_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_rauht_pack6(char *payload,
      enum mlxsw_reg_rauht_op op, u16 rif,
      const char *mac, const char *dip)
{
 mlxsw_reg_rauht_pack(payload, op, rif, mac);
 mlxsw_reg_rauht_type_set(payload, MLXSW_REG_RAUHT_TYPE_IPV6);
 mlxsw_reg_rauht_dip6_memcpy_to(payload, dip);
}
