
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {scalar_t__ rx_length_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_errors; int multicast; int rx_bytes; int tx_bytes; int rx_packets; int tx_packets; } ;
struct net_device {int dummy; } ;


 int MLXSW_REG_PPCNT_IEEE_8023_CNT ;
 int MLXSW_REG_PPCNT_LEN ;
 scalar_t__ mlxsw_reg_ppcnt_a_alignment_errors_get (char*) ;
 scalar_t__ mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get (char*) ;
 scalar_t__ mlxsw_reg_ppcnt_a_frame_too_long_errors_get (char*) ;
 int mlxsw_reg_ppcnt_a_frames_received_ok_get (char*) ;
 int mlxsw_reg_ppcnt_a_frames_transmitted_ok_get (char*) ;
 scalar_t__ mlxsw_reg_ppcnt_a_in_range_length_errors_get (char*) ;
 int mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get (char*) ;
 int mlxsw_reg_ppcnt_a_octets_received_ok_get (char*) ;
 int mlxsw_reg_ppcnt_a_octets_transmitted_ok_get (char*) ;
 scalar_t__ mlxsw_reg_ppcnt_a_out_of_range_length_field_get (char*) ;
 int mlxsw_sp_port_get_stats_raw (struct net_device*,int ,int ,char*) ;

__attribute__((used)) static int mlxsw_sp_port_get_hw_stats(struct net_device *dev,
          struct rtnl_link_stats64 *stats)
{
 char ppcnt_pl[MLXSW_REG_PPCNT_LEN];
 int err;

 err = mlxsw_sp_port_get_stats_raw(dev, MLXSW_REG_PPCNT_IEEE_8023_CNT,
       0, ppcnt_pl);
 if (err)
  goto out;

 stats->tx_packets =
  mlxsw_reg_ppcnt_a_frames_transmitted_ok_get(ppcnt_pl);
 stats->rx_packets =
  mlxsw_reg_ppcnt_a_frames_received_ok_get(ppcnt_pl);
 stats->tx_bytes =
  mlxsw_reg_ppcnt_a_octets_transmitted_ok_get(ppcnt_pl);
 stats->rx_bytes =
  mlxsw_reg_ppcnt_a_octets_received_ok_get(ppcnt_pl);
 stats->multicast =
  mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get(ppcnt_pl);

 stats->rx_crc_errors =
  mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get(ppcnt_pl);
 stats->rx_frame_errors =
  mlxsw_reg_ppcnt_a_alignment_errors_get(ppcnt_pl);

 stats->rx_length_errors = (
  mlxsw_reg_ppcnt_a_in_range_length_errors_get(ppcnt_pl) +
  mlxsw_reg_ppcnt_a_out_of_range_length_field_get(ppcnt_pl) +
  mlxsw_reg_ppcnt_a_frame_too_long_errors_get(ppcnt_pl));

 stats->rx_errors = (stats->rx_crc_errors +
  stats->rx_frame_errors + stats->rx_length_errors);

out:
 return err;
}
