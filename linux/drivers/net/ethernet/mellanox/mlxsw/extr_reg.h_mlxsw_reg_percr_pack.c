
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_percr_atcam_ignore_prune_set (char*,int) ;
 int mlxsw_reg_percr_bf_bypass_set (char*,int) ;
 int mlxsw_reg_percr_ctcam_ignore_prune_set (char*,int) ;
 int mlxsw_reg_percr_region_id_set (char*,int ) ;
 int percr ;

__attribute__((used)) static inline void mlxsw_reg_percr_pack(char *payload, u16 region_id)
{
 MLXSW_REG_ZERO(percr, payload);
 mlxsw_reg_percr_region_id_set(payload, region_id);
 mlxsw_reg_percr_atcam_ignore_prune_set(payload, 0);
 mlxsw_reg_percr_ctcam_ignore_prune_set(payload, 0);
 mlxsw_reg_percr_bf_bypass_set(payload, 0);
}
