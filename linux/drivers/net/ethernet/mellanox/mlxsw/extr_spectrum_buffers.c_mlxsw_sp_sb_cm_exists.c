
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum mlxsw_reg_sbxx_dir { ____Placeholder_mlxsw_reg_sbxx_dir } mlxsw_reg_sbxx_dir ;


 int MLXSW_REG_SBXX_DIR_INGRESS ;
 scalar_t__ MLXSW_SP_SB_EG_TC_COUNT ;
 scalar_t__ MLXSW_SP_SB_ING_TC_COUNT ;

__attribute__((used)) static bool mlxsw_sp_sb_cm_exists(u8 pg_buff, enum mlxsw_reg_sbxx_dir dir)
{
 if (dir == MLXSW_REG_SBXX_DIR_INGRESS)
  return pg_buff < MLXSW_SP_SB_ING_TC_COUNT;
 else
  return pg_buff < MLXSW_SP_SB_EG_TC_COUNT;
}
