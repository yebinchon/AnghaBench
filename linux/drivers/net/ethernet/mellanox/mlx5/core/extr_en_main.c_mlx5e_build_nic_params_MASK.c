#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u16 ;
struct mlx5e_xsk {int dummy; } ;
struct mlx5e_rss_params {int dummy; } ;
struct mlx5e_params {int num_tc; int rx_cqe_compress_def; scalar_t__ rq_wq_type; int lro_en; struct mlx5e_xsk* xsk; int /*<<< orphan*/  tunneled_offload_en; void* num_channels; int /*<<< orphan*/  tx_min_inline_mode; void* tx_dim_enabled; void* rx_dim_enabled; int /*<<< orphan*/  lro_timeout; int /*<<< orphan*/  log_sq_size; int /*<<< orphan*/  hard_mtu; void* sw_mtu; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_DEFAULT_LRO_TIMEOUT ; 
 int /*<<< orphan*/  MLX5E_ETH_HARD_MTU ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_CQE_COMPRESS ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_NO_CSUM_COMPLETE ; 
 int /*<<< orphan*/  MLX5E_PFLAG_XDP_TX_MPWQE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_CQE ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_EQE ; 
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ; 
 int /*<<< orphan*/  cq_moderation ; 
 int /*<<< orphan*/  cq_period_start_from_cqe ; 
 int /*<<< orphan*/  cqe_compression ; 
 int /*<<< orphan*/  enhanced_multi_pkt_send_wqe ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,struct mlx5e_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rss_params*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  vport_group_manager ; 

void FUNC13(struct mlx5_core_dev *mdev,
			    struct mlx5e_xsk *xsk,
			    struct mlx5e_rss_params *rss_params,
			    struct mlx5e_params *params,
			    u16 max_channels, u16 mtu)
{
	u8 rx_cq_period_mode;

	params->sw_mtu = mtu;
	params->hard_mtu = MLX5E_ETH_HARD_MTU;
	params->num_channels = max_channels;
	params->num_tc       = 1;

	/* SQ */
	params->log_sq_size = FUNC3() ?
		MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE :
		MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE;

	/* XDP SQ */
	FUNC0(params, MLX5E_PFLAG_XDP_TX_MPWQE,
			FUNC1(mdev, enhanced_multi_pkt_send_wqe));

	/* set CQE compression */
	params->rx_cqe_compress_def = false;
	if (FUNC2(mdev, cqe_compression) &&
	    FUNC2(mdev, vport_group_manager))
		params->rx_cqe_compress_def = FUNC12(mdev);

	FUNC0(params, MLX5E_PFLAG_RX_CQE_COMPRESS, params->rx_cqe_compress_def);
	FUNC0(params, MLX5E_PFLAG_RX_NO_CSUM_COMPLETE, false);

	/* RQ */
	FUNC5(mdev, params);

	/* HW LRO */

	/* TODO: && MLX5_CAP_ETH(mdev, lro_cap) */
	if (params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ) {
		/* No XSK params: checking the availability of striding RQ in general. */
		if (!FUNC8(mdev, params, NULL))
			params->lro_en = !FUNC12(mdev);
	}
	params->lro_timeout = FUNC7(mdev, MLX5E_DEFAULT_LRO_TIMEOUT);

	/* CQ moderation params */
	rx_cq_period_mode = FUNC2(mdev, cq_period_start_from_cqe) ?
			MLX5_CQ_PERIOD_MODE_START_FROM_CQE :
			MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
	params->rx_dim_enabled = FUNC2(mdev, cq_moderation);
	params->tx_dim_enabled = FUNC2(mdev, cq_moderation);
	FUNC9(params, rx_cq_period_mode);
	FUNC10(params, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);

	/* TX inline */
	FUNC4(mdev, &params->tx_min_inline_mode);

	/* RSS */
	FUNC6(rss_params, params->num_channels);
	params->tunneled_offload_en =
		FUNC11(mdev);

	/* AF_XDP */
	params->xsk = xsk;
}