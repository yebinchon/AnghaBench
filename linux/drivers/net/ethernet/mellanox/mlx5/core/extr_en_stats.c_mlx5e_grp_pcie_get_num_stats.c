
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 scalar_t__ MLX5_CAP_MCAM_FEATURE (int ,int ) ;
 scalar_t__ NUM_PCIE_PERF_COUNTERS ;
 scalar_t__ NUM_PCIE_PERF_COUNTERS64 ;
 scalar_t__ NUM_PCIE_PERF_STALL_COUNTERS ;
 int pcie_outbound_stalled ;
 int pcie_performance_group ;
 int tx_overflow_buffer_pkt ;

__attribute__((used)) static int mlx5e_grp_pcie_get_num_stats(struct mlx5e_priv *priv)
{
 int num_stats = 0;

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_performance_group))
  num_stats += NUM_PCIE_PERF_COUNTERS;

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, tx_overflow_buffer_pkt))
  num_stats += NUM_PCIE_PERF_COUNTERS64;

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_outbound_stalled))
  num_stats += NUM_PCIE_PERF_STALL_COUNTERS;

 return num_stats;
}
