
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port_hw_stats {int dummy; } ;
typedef enum mlxsw_reg_ppcnt_grp { ____Placeholder_mlxsw_reg_ppcnt_grp } mlxsw_reg_ppcnt_grp ;


 int EOPNOTSUPP ;







 int MLXSW_SP_PORT_HW_DISCARD_STATS_LEN ;
 int MLXSW_SP_PORT_HW_PRIO_STATS_LEN ;
 int MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN ;
 int MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN ;
 int MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN ;
 int MLXSW_SP_PORT_HW_STATS_LEN ;
 int MLXSW_SP_PORT_HW_TC_STATS_LEN ;
 int WARN_ON (int) ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_discard_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_prio_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_rfc_2819_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_rfc_2863_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_rfc_3635_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_stats ;
 struct mlxsw_sp_port_hw_stats* mlxsw_sp_port_hw_tc_stats ;

__attribute__((used)) static int
mlxsw_sp_get_hw_stats_by_group(struct mlxsw_sp_port_hw_stats **p_hw_stats,
          int *p_len, enum mlxsw_reg_ppcnt_grp grp)
{
 switch (grp) {
 case 133:
  *p_hw_stats = mlxsw_sp_port_hw_stats;
  *p_len = MLXSW_SP_PORT_HW_STATS_LEN;
  break;
 case 130:
  *p_hw_stats = mlxsw_sp_port_hw_rfc_2863_stats;
  *p_len = MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN;
  break;
 case 131:
  *p_hw_stats = mlxsw_sp_port_hw_rfc_2819_stats;
  *p_len = MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN;
  break;
 case 129:
  *p_hw_stats = mlxsw_sp_port_hw_rfc_3635_stats;
  *p_len = MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN;
  break;
 case 134:
  *p_hw_stats = mlxsw_sp_port_hw_discard_stats;
  *p_len = MLXSW_SP_PORT_HW_DISCARD_STATS_LEN;
  break;
 case 132:
  *p_hw_stats = mlxsw_sp_port_hw_prio_stats;
  *p_len = MLXSW_SP_PORT_HW_PRIO_STATS_LEN;
  break;
 case 128:
  *p_hw_stats = mlxsw_sp_port_hw_tc_stats;
  *p_len = MLXSW_SP_PORT_HW_TC_STATS_LEN;
  break;
 default:
  WARN_ON(1);
  return -EOPNOTSUPP;
 }
 return 0;
}
