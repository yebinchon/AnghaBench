
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;


 int MLXSW_REG_RAUHT_OP_WRITE_ADD ;
 int MLXSW_REG_RAUHT_OP_WRITE_DELETE ;

__attribute__((used)) static enum mlxsw_reg_rauht_op mlxsw_sp_rauht_op(bool adding)
{
 return adding ? MLXSW_REG_RAUHT_OP_WRITE_ADD :
   MLXSW_REG_RAUHT_OP_WRITE_DELETE;
}
