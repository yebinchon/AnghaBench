
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_sfd_op { ____Placeholder_mlxsw_reg_sfd_op } mlxsw_reg_sfd_op ;


 int MLXSW_REG_SFD_OP_WRITE_EDIT ;
 int MLXSW_REG_SFD_OP_WRITE_REMOVE ;

__attribute__((used)) static enum mlxsw_reg_sfd_op mlxsw_sp_sfd_op(bool adding)
{
 return adding ? MLXSW_REG_SFD_OP_WRITE_EDIT :
   MLXSW_REG_SFD_OP_WRITE_REMOVE;
}
