
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_reg_sfd_op { ____Placeholder_mlxsw_reg_sfd_op } mlxsw_reg_sfd_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sfd_op_set (char*,int) ;
 int mlxsw_reg_sfd_record_locator_set (char*,int ) ;
 int sfd ;

__attribute__((used)) static inline void mlxsw_reg_sfd_pack(char *payload, enum mlxsw_reg_sfd_op op,
          u32 record_locator)
{
 MLXSW_REG_ZERO(sfd, payload);
 mlxsw_reg_sfd_op_set(payload, op);
 mlxsw_reg_sfd_record_locator_set(payload, record_locator);
}
