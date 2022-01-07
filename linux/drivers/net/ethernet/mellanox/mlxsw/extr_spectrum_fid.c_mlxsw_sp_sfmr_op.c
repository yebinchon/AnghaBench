
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_sfmr_op { ____Placeholder_mlxsw_reg_sfmr_op } mlxsw_reg_sfmr_op ;


 int MLXSW_REG_SFMR_OP_CREATE_FID ;
 int MLXSW_REG_SFMR_OP_DESTROY_FID ;

__attribute__((used)) static enum mlxsw_reg_sfmr_op mlxsw_sp_sfmr_op(bool valid)
{
 return valid ? MLXSW_REG_SFMR_OP_CREATE_FID :
         MLXSW_REG_SFMR_OP_DESTROY_FID;
}
