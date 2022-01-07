
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum mlxsw_reg_sbxx_dir { ____Placeholder_mlxsw_reg_sbxx_dir } mlxsw_reg_sbxx_dir ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sbcm_dir_set (char*,int) ;
 int mlxsw_reg_sbcm_infi_max_set (char*,int) ;
 int mlxsw_reg_sbcm_local_port_set (char*,int ) ;
 int mlxsw_reg_sbcm_max_buff_set (char*,int ) ;
 int mlxsw_reg_sbcm_min_buff_set (char*,int ) ;
 int mlxsw_reg_sbcm_pg_buff_set (char*,int ) ;
 int mlxsw_reg_sbcm_pool_set (char*,int ) ;
 int sbcm ;

__attribute__((used)) static inline void mlxsw_reg_sbcm_pack(char *payload, u8 local_port, u8 pg_buff,
           enum mlxsw_reg_sbxx_dir dir,
           u32 min_buff, u32 max_buff,
           bool infi_max, u8 pool)
{
 MLXSW_REG_ZERO(sbcm, payload);
 mlxsw_reg_sbcm_local_port_set(payload, local_port);
 mlxsw_reg_sbcm_pg_buff_set(payload, pg_buff);
 mlxsw_reg_sbcm_dir_set(payload, dir);
 mlxsw_reg_sbcm_min_buff_set(payload, min_buff);
 mlxsw_reg_sbcm_max_buff_set(payload, max_buff);
 mlxsw_reg_sbcm_infi_max_set(payload, infi_max);
 mlxsw_reg_sbcm_pool_set(payload, pool);
}
