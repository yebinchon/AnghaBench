
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_counter {scalar_t__ counter_mode; int tx_bytes; int rx_bytes; int tx_frames; int rx_frames; } ;
struct ifla_vf_stats {void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 void* be64_to_cpu (int ) ;
 int mlx4_calc_vf_counters (struct mlx4_dev*,int,int,struct mlx4_counter*) ;
 int mlx4_get_slave_indx (struct mlx4_dev*,int) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_slaves_closest_port (struct mlx4_dev*,int,int) ;

int mlx4_get_vf_stats(struct mlx4_dev *dev, int port, int vf_idx,
        struct ifla_vf_stats *vf_stats)
{
 struct mlx4_counter tmp_vf_stats;
 int slave;
 int err = 0;

 if (!vf_stats)
  return -EINVAL;

 if (!mlx4_is_master(dev))
  return -EPROTONOSUPPORT;

 slave = mlx4_get_slave_indx(dev, vf_idx);
 if (slave < 0)
  return -EINVAL;

 port = mlx4_slaves_closest_port(dev, slave, port);
 err = mlx4_calc_vf_counters(dev, slave, port, &tmp_vf_stats);
 if (!err && tmp_vf_stats.counter_mode == 0) {
  vf_stats->rx_packets = be64_to_cpu(tmp_vf_stats.rx_frames);
  vf_stats->tx_packets = be64_to_cpu(tmp_vf_stats.tx_frames);
  vf_stats->rx_bytes = be64_to_cpu(tmp_vf_stats.rx_bytes);
  vf_stats->tx_bytes = be64_to_cpu(tmp_vf_stats.tx_bytes);
 }

 return err;
}
