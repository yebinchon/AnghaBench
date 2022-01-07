
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_raleu_adjacency_index_set (char*,int ) ;
 int mlxsw_reg_raleu_ecmp_size_set (char*,int ) ;
 int mlxsw_reg_raleu_new_adjacency_index_set (char*,int ) ;
 int mlxsw_reg_raleu_new_ecmp_size_set (char*,int ) ;
 int mlxsw_reg_raleu_protocol_set (char*,int) ;
 int mlxsw_reg_raleu_virtual_router_set (char*,int ) ;
 int raleu ;

__attribute__((used)) static inline void mlxsw_reg_raleu_pack(char *payload,
     enum mlxsw_reg_ralxx_protocol protocol,
     u16 virtual_router,
     u32 adjacency_index, u16 ecmp_size,
     u32 new_adjacency_index,
     u16 new_ecmp_size)
{
 MLXSW_REG_ZERO(raleu, payload);
 mlxsw_reg_raleu_protocol_set(payload, protocol);
 mlxsw_reg_raleu_virtual_router_set(payload, virtual_router);
 mlxsw_reg_raleu_adjacency_index_set(payload, adjacency_index);
 mlxsw_reg_raleu_ecmp_size_set(payload, ecmp_size);
 mlxsw_reg_raleu_new_adjacency_index_set(payload, new_adjacency_index);
 mlxsw_reg_raleu_new_ecmp_size_set(payload, new_ecmp_size);
}
