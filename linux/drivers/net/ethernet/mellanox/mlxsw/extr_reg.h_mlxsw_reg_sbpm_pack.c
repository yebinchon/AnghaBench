
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum mlxsw_reg_sbxx_dir { ____Placeholder_mlxsw_reg_sbxx_dir } mlxsw_reg_sbxx_dir ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sbpm_clr_set (char*,int) ;
 int mlxsw_reg_sbpm_dir_set (char*,int) ;
 int mlxsw_reg_sbpm_local_port_set (char*,int ) ;
 int mlxsw_reg_sbpm_max_buff_set (char*,int ) ;
 int mlxsw_reg_sbpm_min_buff_set (char*,int ) ;
 int mlxsw_reg_sbpm_pool_set (char*,int ) ;
 int sbpm ;

__attribute__((used)) static inline void mlxsw_reg_sbpm_pack(char *payload, u8 local_port, u8 pool,
           enum mlxsw_reg_sbxx_dir dir, bool clr,
           u32 min_buff, u32 max_buff)
{
 MLXSW_REG_ZERO(sbpm, payload);
 mlxsw_reg_sbpm_local_port_set(payload, local_port);
 mlxsw_reg_sbpm_pool_set(payload, pool);
 mlxsw_reg_sbpm_dir_set(payload, dir);
 mlxsw_reg_sbpm_clr_set(payload, clr);
 mlxsw_reg_sbpm_min_buff_set(payload, min_buff);
 mlxsw_reg_sbpm_max_buff_set(payload, max_buff);
}
