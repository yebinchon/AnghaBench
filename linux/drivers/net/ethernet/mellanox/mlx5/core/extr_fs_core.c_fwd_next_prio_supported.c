
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {scalar_t__ type; int node; } ;


 scalar_t__ FS_FT_NIC_RX ;
 scalar_t__ MLX5_CAP_FLOWTABLE (int ,int ) ;
 int get_dev (int *) ;
 int nic_rx_multi_path_tirs ;

__attribute__((used)) static bool fwd_next_prio_supported(struct mlx5_flow_table *ft)
{
 return ((ft->type == FS_FT_NIC_RX) &&
  (MLX5_CAP_FLOWTABLE(get_dev(&ft->node), nic_rx_multi_path_tirs)));
}
