
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_sfd_rec_mac_memcpy_from (char*,int,char*) ;
 int mlxsw_reg_sfd_uc_lag_fid_vid_get (char*,int) ;
 int mlxsw_reg_sfd_uc_lag_lag_id_get (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_sfd_uc_lag_unpack(char *payload, int rec_index,
            char *mac, u16 *p_vid,
            u16 *p_lag_id)
{
 mlxsw_reg_sfd_rec_mac_memcpy_from(payload, rec_index, mac);
 *p_vid = mlxsw_reg_sfd_uc_lag_fid_vid_get(payload, rec_index);
 *p_lag_id = mlxsw_reg_sfd_uc_lag_lag_id_get(payload, rec_index);
}
