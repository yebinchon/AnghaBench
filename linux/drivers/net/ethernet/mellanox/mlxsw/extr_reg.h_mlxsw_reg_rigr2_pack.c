
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rigr2_next_rigr_index_set (char*,int ) ;
 int mlxsw_reg_rigr2_rigr_index_set (char*,int ) ;
 int mlxsw_reg_rigr2_rmid_index_set (char*,int ) ;
 int mlxsw_reg_rigr2_vnext_set (char*,int) ;
 int mlxsw_reg_rigr2_vrmid_set (char*,int ) ;
 int rigr2 ;

__attribute__((used)) static inline void mlxsw_reg_rigr2_pack(char *payload, u32 rigr_index,
     bool vnext, u32 next_rigr_index)
{
 MLXSW_REG_ZERO(rigr2, payload);
 mlxsw_reg_rigr2_rigr_index_set(payload, rigr_index);
 mlxsw_reg_rigr2_vnext_set(payload, vnext);
 mlxsw_reg_rigr2_next_rigr_index_set(payload, next_rigr_index);
 mlxsw_reg_rigr2_vrmid_set(payload, 0);
 mlxsw_reg_rigr2_rmid_index_set(payload, 0);
}
