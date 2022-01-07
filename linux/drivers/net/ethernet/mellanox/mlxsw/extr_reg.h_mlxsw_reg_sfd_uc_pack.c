
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_sfd_rec_policy { ____Placeholder_mlxsw_reg_sfd_rec_policy } mlxsw_reg_sfd_rec_policy ;
typedef enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;


 int MLXSW_REG_SFD_REC_TYPE_UNICAST ;
 int mlxsw_reg_sfd_rec_pack (char*,int,int ,char const*,int) ;
 int mlxsw_reg_sfd_rec_policy_set (char*,int,int) ;
 int mlxsw_reg_sfd_uc_fid_vid_set (char*,int,int ) ;
 int mlxsw_reg_sfd_uc_sub_port_set (char*,int,int ) ;
 int mlxsw_reg_sfd_uc_system_port_set (char*,int,int ) ;

__attribute__((used)) static inline void mlxsw_reg_sfd_uc_pack(char *payload, int rec_index,
      enum mlxsw_reg_sfd_rec_policy policy,
      const char *mac, u16 fid_vid,
      enum mlxsw_reg_sfd_rec_action action,
      u8 local_port)
{
 mlxsw_reg_sfd_rec_pack(payload, rec_index,
          MLXSW_REG_SFD_REC_TYPE_UNICAST, mac, action);
 mlxsw_reg_sfd_rec_policy_set(payload, rec_index, policy);
 mlxsw_reg_sfd_uc_sub_port_set(payload, rec_index, 0);
 mlxsw_reg_sfd_uc_fid_vid_set(payload, rec_index, fid_vid);
 mlxsw_reg_sfd_uc_system_port_set(payload, rec_index, local_port);
}
