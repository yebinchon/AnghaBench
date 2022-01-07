
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;


 int mlxsw_reg_ralue_dip4_set (char*,int ) ;
 int mlxsw_reg_ralue_pack (char*,int,int,int ,int ) ;

__attribute__((used)) static inline void mlxsw_reg_ralue_pack4(char *payload,
      enum mlxsw_reg_ralxx_protocol protocol,
      enum mlxsw_reg_ralue_op op,
      u16 virtual_router, u8 prefix_len,
      u32 dip)
{
 mlxsw_reg_ralue_pack(payload, protocol, op, virtual_router, prefix_len);
 mlxsw_reg_ralue_dip4_set(payload, dip);
}
