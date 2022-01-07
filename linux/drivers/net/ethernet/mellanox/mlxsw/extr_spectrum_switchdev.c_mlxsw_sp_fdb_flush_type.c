
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_sfdf_flush_type { ____Placeholder_mlxsw_reg_sfdf_flush_type } mlxsw_reg_sfdf_flush_type ;


 int MLXSW_REG_SFDF_FLUSH_PER_LAG_AND_FID ;
 int MLXSW_REG_SFDF_FLUSH_PER_PORT_AND_FID ;

__attribute__((used)) static enum mlxsw_reg_sfdf_flush_type mlxsw_sp_fdb_flush_type(bool lagged)
{
 return lagged ? MLXSW_REG_SFDF_FLUSH_PER_LAG_AND_FID :
   MLXSW_REG_SFDF_FLUSH_PER_PORT_AND_FID;
}
