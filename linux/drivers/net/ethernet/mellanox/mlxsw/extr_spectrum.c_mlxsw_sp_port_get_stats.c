
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ptp_ops; } ;
struct TYPE_3__ {scalar_t__ (* get_stats_count ) () ;int (* get_stats ) (struct mlxsw_sp_port*,int *,int) ;} ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG_PPCNT_DISCARD_CNT ;
 int MLXSW_REG_PPCNT_IEEE_8023_CNT ;
 int MLXSW_REG_PPCNT_PRIO_CNT ;
 int MLXSW_REG_PPCNT_RFC_2819_CNT ;
 int MLXSW_REG_PPCNT_RFC_2863_CNT ;
 int MLXSW_REG_PPCNT_RFC_3635_CNT ;
 int MLXSW_REG_PPCNT_TC_CNT ;
 scalar_t__ MLXSW_SP_PORT_HW_DISCARD_STATS_LEN ;
 scalar_t__ MLXSW_SP_PORT_HW_PRIO_STATS_LEN ;
 scalar_t__ MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN ;
 scalar_t__ MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN ;
 scalar_t__ MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN ;
 int MLXSW_SP_PORT_HW_STATS_LEN ;
 scalar_t__ MLXSW_SP_PORT_HW_TC_STATS_LEN ;
 int TC_MAX_QUEUE ;
 int __mlxsw_sp_port_get_stats (struct net_device*,int ,int,int *,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int stub1 (struct mlxsw_sp_port*,int *,int) ;
 scalar_t__ stub2 () ;

__attribute__((used)) static void mlxsw_sp_port_get_stats(struct net_device *dev,
        struct ethtool_stats *stats, u64 *data)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int i, data_index = 0;


 __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_IEEE_8023_CNT, 0,
      data, data_index);
 data_index = MLXSW_SP_PORT_HW_STATS_LEN;


 __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_RFC_2863_CNT, 0,
      data, data_index);
 data_index += MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN;


 __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_RFC_2819_CNT, 0,
      data, data_index);
 data_index += MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN;


 __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_RFC_3635_CNT, 0,
      data, data_index);
 data_index += MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN;


 __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_DISCARD_CNT, 0,
      data, data_index);
 data_index += MLXSW_SP_PORT_HW_DISCARD_STATS_LEN;


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_PRIO_CNT, i,
       data, data_index);
  data_index += MLXSW_SP_PORT_HW_PRIO_STATS_LEN;
 }


 for (i = 0; i < TC_MAX_QUEUE; i++) {
  __mlxsw_sp_port_get_stats(dev, MLXSW_REG_PPCNT_TC_CNT, i,
       data, data_index);
  data_index += MLXSW_SP_PORT_HW_TC_STATS_LEN;
 }


 mlxsw_sp_port->mlxsw_sp->ptp_ops->get_stats(mlxsw_sp_port,
          data, data_index);
 data_index += mlxsw_sp_port->mlxsw_sp->ptp_ops->get_stats_count();
}
