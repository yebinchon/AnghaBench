
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct mlx5e_xsk {int dummy; } ;
struct mlx5e_rss_params {int dummy; } ;
struct mlx5e_params {int num_tc; int rx_cqe_compress_def; scalar_t__ rq_wq_type; int lro_en; struct mlx5e_xsk* xsk; int tunneled_offload_en; void* num_channels; int tx_min_inline_mode; void* tx_dim_enabled; void* rx_dim_enabled; int lro_timeout; int log_sq_size; int hard_mtu; void* sw_mtu; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_DEFAULT_LRO_TIMEOUT ;
 int MLX5E_ETH_HARD_MTU ;
 int MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE ;
 int MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE ;
 int MLX5E_PFLAG_RX_CQE_COMPRESS ;
 int MLX5E_PFLAG_RX_NO_CSUM_COMPLETE ;
 int MLX5E_PFLAG_XDP_TX_MPWQE ;
 int MLX5E_SET_PFLAG (struct mlx5e_params*,int ,int) ;
 int MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 void* MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_EQE ;
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ;
 int cq_moderation ;
 int cq_period_start_from_cqe ;
 int cqe_compression ;
 int enhanced_multi_pkt_send_wqe ;
 scalar_t__ is_kdump_kernel () ;
 int mlx5_query_min_inline (struct mlx5_core_dev*,int *) ;
 int mlx5e_build_rq_params (struct mlx5_core_dev*,struct mlx5e_params*) ;
 int mlx5e_build_rss_params (struct mlx5e_rss_params*,void*) ;
 int mlx5e_choose_lro_timeout (struct mlx5_core_dev*,int ) ;
 int mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,int *) ;
 int mlx5e_set_rx_cq_mode_params (struct mlx5e_params*,int ) ;
 int mlx5e_set_tx_cq_mode_params (struct mlx5e_params*,int ) ;
 int mlx5e_tunnel_inner_ft_supported (struct mlx5_core_dev*) ;
 int slow_pci_heuristic (struct mlx5_core_dev*) ;
 int vport_group_manager ;

void mlx5e_build_nic_params(struct mlx5_core_dev *mdev,
       struct mlx5e_xsk *xsk,
       struct mlx5e_rss_params *rss_params,
       struct mlx5e_params *params,
       u16 max_channels, u16 mtu)
{
 u8 rx_cq_period_mode;

 params->sw_mtu = mtu;
 params->hard_mtu = MLX5E_ETH_HARD_MTU;
 params->num_channels = max_channels;
 params->num_tc = 1;


 params->log_sq_size = is_kdump_kernel() ?
  MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE :
  MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE;


 MLX5E_SET_PFLAG(params, MLX5E_PFLAG_XDP_TX_MPWQE,
   MLX5_CAP_ETH(mdev, enhanced_multi_pkt_send_wqe));


 params->rx_cqe_compress_def = 0;
 if (MLX5_CAP_GEN(mdev, cqe_compression) &&
     MLX5_CAP_GEN(mdev, vport_group_manager))
  params->rx_cqe_compress_def = slow_pci_heuristic(mdev);

 MLX5E_SET_PFLAG(params, MLX5E_PFLAG_RX_CQE_COMPRESS, params->rx_cqe_compress_def);
 MLX5E_SET_PFLAG(params, MLX5E_PFLAG_RX_NO_CSUM_COMPLETE, 0);


 mlx5e_build_rq_params(mdev, params);




 if (params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ) {

  if (!mlx5e_rx_mpwqe_is_linear_skb(mdev, params, ((void*)0)))
   params->lro_en = !slow_pci_heuristic(mdev);
 }
 params->lro_timeout = mlx5e_choose_lro_timeout(mdev, MLX5E_DEFAULT_LRO_TIMEOUT);


 rx_cq_period_mode = MLX5_CAP_GEN(mdev, cq_period_start_from_cqe) ?
   MLX5_CQ_PERIOD_MODE_START_FROM_CQE :
   MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
 params->rx_dim_enabled = MLX5_CAP_GEN(mdev, cq_moderation);
 params->tx_dim_enabled = MLX5_CAP_GEN(mdev, cq_moderation);
 mlx5e_set_rx_cq_mode_params(params, rx_cq_period_mode);
 mlx5e_set_tx_cq_mode_params(params, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);


 mlx5_query_min_inline(mdev, &params->tx_min_inline_mode);


 mlx5e_build_rss_params(rss_params, params->num_channels);
 params->tunneled_offload_en =
  mlx5e_tunnel_inner_ft_supported(mdev);


 params->xsk = xsk;
}
