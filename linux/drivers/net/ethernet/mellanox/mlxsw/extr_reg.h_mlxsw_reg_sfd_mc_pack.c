
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;


 int MLXSW_REG_SFD_REC_TYPE_MULTICAST ;
 int mlxsw_reg_sfd_mc_fid_vid_set (char*,int,int ) ;
 int mlxsw_reg_sfd_mc_mid_set (char*,int,int ) ;
 int mlxsw_reg_sfd_mc_pgi_set (char*,int,int) ;
 int mlxsw_reg_sfd_rec_pack (char*,int,int ,char const*,int) ;

__attribute__((used)) static inline void
mlxsw_reg_sfd_mc_pack(char *payload, int rec_index,
        const char *mac, u16 fid_vid,
        enum mlxsw_reg_sfd_rec_action action, u16 mid)
{
 mlxsw_reg_sfd_rec_pack(payload, rec_index,
          MLXSW_REG_SFD_REC_TYPE_MULTICAST, mac, action);
 mlxsw_reg_sfd_mc_pgi_set(payload, rec_index, 0x1FFF);
 mlxsw_reg_sfd_mc_fid_vid_set(payload, rec_index, fid_vid);
 mlxsw_reg_sfd_mc_mid_set(payload, rec_index, mid);
}
