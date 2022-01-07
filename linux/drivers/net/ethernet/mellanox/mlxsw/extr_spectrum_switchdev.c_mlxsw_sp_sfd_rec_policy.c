
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_sfd_rec_policy { ____Placeholder_mlxsw_reg_sfd_rec_policy } mlxsw_reg_sfd_rec_policy ;


 int MLXSW_REG_SFD_REC_POLICY_DYNAMIC_ENTRY_INGRESS ;
 int MLXSW_REG_SFD_REC_POLICY_DYNAMIC_ENTRY_MLAG ;

__attribute__((used)) static enum mlxsw_reg_sfd_rec_policy mlxsw_sp_sfd_rec_policy(bool dynamic)
{
 return dynamic ? MLXSW_REG_SFD_REC_POLICY_DYNAMIC_ENTRY_INGRESS :
    MLXSW_REG_SFD_REC_POLICY_DYNAMIC_ENTRY_MLAG;
}
