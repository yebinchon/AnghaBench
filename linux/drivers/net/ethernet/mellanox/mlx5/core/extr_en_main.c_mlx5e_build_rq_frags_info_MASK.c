#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_rq_frags_info {int num_frags; int wqe_bulk; int /*<<< orphan*/  log_num_frags; TYPE_1__* arr; } ;
struct mlx5e_params {int /*<<< orphan*/  sw_mtu; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int frag_size; int frag_stride; } ;

/* Variables and functions */
 int DEFAULT_FRAG_SIZE ; 
 int MLX5E_MAX_RX_FRAGS ; 
 scalar_t__ MLX5E_METADATA_ETHER_LEN ; 
 int FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*) ; 
 int PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 scalar_t__ FUNC5 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static void FUNC8(struct mlx5_core_dev *mdev,
				      struct mlx5e_params *params,
				      struct mlx5e_xsk_param *xsk,
				      struct mlx5e_rq_frags_info *info)
{
	u32 byte_count = FUNC0(params, params->sw_mtu);
	int frag_size_max = DEFAULT_FRAG_SIZE;
	u32 buf_size = 0;
	int i;

#ifdef CONFIG_MLX5_EN_IPSEC
	if (MLX5_IPSEC_DEV(mdev))
		byte_count += MLX5E_METADATA_ETHER_LEN;
#endif

	if (FUNC5(params, xsk)) {
		int frag_stride;

		frag_stride = FUNC4(params, xsk);
		frag_stride = FUNC7(frag_stride);

		info->arr[0].frag_size = byte_count;
		info->arr[0].frag_stride = frag_stride;
		info->num_frags = 1;
		info->wqe_bulk = PAGE_SIZE / frag_stride;
		goto out;
	}

	if (byte_count > PAGE_SIZE +
	    (MLX5E_MAX_RX_FRAGS - 1) * frag_size_max)
		frag_size_max = PAGE_SIZE;

	i = 0;
	while (buf_size < byte_count) {
		int frag_size = byte_count - buf_size;

		if (i < MLX5E_MAX_RX_FRAGS - 1)
			frag_size = FUNC3(frag_size, frag_size_max);

		info->arr[i].frag_size = frag_size;
		info->arr[i].frag_stride = FUNC7(frag_size);

		buf_size += frag_size;
		i++;
	}
	info->num_frags = i;
	/* number of different wqes sharing a page */
	info->wqe_bulk = 1 + (info->num_frags % 2);

out:
	info->wqe_bulk = FUNC2(u8, info->wqe_bulk, 8);
	info->log_num_frags = FUNC6(info->num_frags);
}