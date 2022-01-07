
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_sfd_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfd_uc_tunnel_protocol } mlxsw_reg_sfd_uc_tunnel_protocol ;
typedef enum mlxsw_reg_sfd_rec_policy { ____Placeholder_mlxsw_reg_sfd_rec_policy } mlxsw_reg_sfd_rec_policy ;
typedef enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;


 int MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL ;
 int mlxsw_reg_sfd_rec_pack (char*,int,int ,char const*,int) ;
 int mlxsw_reg_sfd_rec_policy_set (char*,int,int) ;
 int mlxsw_reg_sfd_uc_tunnel_fid_set (char*,int,int ) ;
 int mlxsw_reg_sfd_uc_tunnel_protocol_set (char*,int,int) ;
 int mlxsw_reg_sfd_uc_tunnel_uip_lsb_set (char*,int,int) ;
 int mlxsw_reg_sfd_uc_tunnel_uip_msb_set (char*,int,int) ;

__attribute__((used)) static inline void
mlxsw_reg_sfd_uc_tunnel_pack(char *payload, int rec_index,
        enum mlxsw_reg_sfd_rec_policy policy,
        const char *mac, u16 fid,
        enum mlxsw_reg_sfd_rec_action action, u32 uip,
        enum mlxsw_reg_sfd_uc_tunnel_protocol proto)
{
 mlxsw_reg_sfd_rec_pack(payload, rec_index,
          MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL, mac,
          action);
 mlxsw_reg_sfd_rec_policy_set(payload, rec_index, policy);
 mlxsw_reg_sfd_uc_tunnel_uip_msb_set(payload, rec_index, uip >> 24);
 mlxsw_reg_sfd_uc_tunnel_uip_lsb_set(payload, rec_index, uip);
 mlxsw_reg_sfd_uc_tunnel_fid_set(payload, rec_index, fid);
 mlxsw_reg_sfd_uc_tunnel_protocol_set(payload, rec_index, proto);
}
