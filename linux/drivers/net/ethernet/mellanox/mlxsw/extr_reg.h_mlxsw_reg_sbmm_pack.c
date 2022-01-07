
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sbmm_max_buff_set (char*,int ) ;
 int mlxsw_reg_sbmm_min_buff_set (char*,int ) ;
 int mlxsw_reg_sbmm_pool_set (char*,int ) ;
 int mlxsw_reg_sbmm_prio_set (char*,int ) ;
 int sbmm ;

__attribute__((used)) static inline void mlxsw_reg_sbmm_pack(char *payload, u8 prio, u32 min_buff,
           u32 max_buff, u8 pool)
{
 MLXSW_REG_ZERO(sbmm, payload);
 mlxsw_reg_sbmm_prio_set(payload, prio);
 mlxsw_reg_sbmm_min_buff_set(payload, min_buff);
 mlxsw_reg_sbmm_max_buff_set(payload, max_buff);
 mlxsw_reg_sbmm_pool_set(payload, pool);
}
