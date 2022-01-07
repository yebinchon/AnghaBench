
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_tngcr_type { ____Placeholder_mlxsw_reg_tngcr_type } mlxsw_reg_tngcr_type ;


 int MLXSW_REG_TNGCR_FL_NO_COPY ;
 int MLXSW_REG_TNGCR_UDP_SPORT_HASH ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tngcr_nve_flc_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_flh_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_group_size_flood_set (char*,int) ;
 int mlxsw_reg_tngcr_nve_group_size_mc_set (char*,int) ;
 int mlxsw_reg_tngcr_nve_ttl_mc_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_ttl_uc_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_udp_sport_prefix_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_udp_sport_type_set (char*,int ) ;
 int mlxsw_reg_tngcr_nve_valid_set (char*,int) ;
 int mlxsw_reg_tngcr_type_set (char*,int) ;
 int tngcr ;

__attribute__((used)) static inline void mlxsw_reg_tngcr_pack(char *payload,
     enum mlxsw_reg_tngcr_type type,
     bool valid, u8 ttl)
{
 MLXSW_REG_ZERO(tngcr, payload);
 mlxsw_reg_tngcr_type_set(payload, type);
 mlxsw_reg_tngcr_nve_valid_set(payload, valid);
 mlxsw_reg_tngcr_nve_ttl_uc_set(payload, ttl);
 mlxsw_reg_tngcr_nve_ttl_mc_set(payload, ttl);
 mlxsw_reg_tngcr_nve_flc_set(payload, MLXSW_REG_TNGCR_FL_NO_COPY);
 mlxsw_reg_tngcr_nve_flh_set(payload, 0);
 mlxsw_reg_tngcr_nve_udp_sport_type_set(payload,
            MLXSW_REG_TNGCR_UDP_SPORT_HASH);
 mlxsw_reg_tngcr_nve_udp_sport_prefix_set(payload, 0);
 mlxsw_reg_tngcr_nve_group_size_mc_set(payload, 1);
 mlxsw_reg_tngcr_nve_group_size_flood_set(payload, 1);
}
