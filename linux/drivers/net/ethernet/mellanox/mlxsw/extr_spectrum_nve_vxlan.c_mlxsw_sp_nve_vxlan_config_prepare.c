
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int udp_sport ;
typedef int u8 ;
struct TYPE_2__ {int addr4; } ;
struct mlxsw_sp_nve_config {TYPE_1__ ul_sip; int ttl; } ;


 int MLXSW_REG_TNGCR_TYPE_VXLAN ;
 int be32_to_cpu (int ) ;
 int get_random_bytes (int*,int) ;
 int mlxsw_reg_tngcr_nve_udp_sport_prefix_set (char*,int) ;
 int mlxsw_reg_tngcr_pack (char*,int ,int,int ) ;
 int mlxsw_reg_tngcr_usipv4_set (char*,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_vxlan_config_prepare(char *tngcr_pl,
      const struct mlxsw_sp_nve_config *config)
{
 u8 udp_sport;

 mlxsw_reg_tngcr_pack(tngcr_pl, MLXSW_REG_TNGCR_TYPE_VXLAN, 1,
        config->ttl);




 get_random_bytes(&udp_sport, sizeof(udp_sport));
 udp_sport = (udp_sport % (0xee - 0x80 + 1)) + 0x80;
 mlxsw_reg_tngcr_nve_udp_sport_prefix_set(tngcr_pl, udp_sport);
 mlxsw_reg_tngcr_usipv4_set(tngcr_pl, be32_to_cpu(config->ul_sip.addr4));
}
