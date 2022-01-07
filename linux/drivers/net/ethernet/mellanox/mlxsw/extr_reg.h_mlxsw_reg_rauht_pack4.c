
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;


 int mlxsw_reg_rauht_dip4_set (char*,int ) ;
 int mlxsw_reg_rauht_pack (char*,int,int ,char const*) ;

__attribute__((used)) static inline void mlxsw_reg_rauht_pack4(char *payload,
      enum mlxsw_reg_rauht_op op, u16 rif,
      const char *mac, u32 dip)
{
 mlxsw_reg_rauht_pack(payload, op, rif, mac);
 mlxsw_reg_rauht_dip4_set(payload, dip);
}
