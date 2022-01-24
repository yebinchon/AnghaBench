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
struct mlx5_tun_entropy {scalar_t__ num_disabling_entries; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_enabling_entries; } ;

/* Variables and functions */
 int MLX5_REFORMAT_TYPE_L2_TO_NVGRE ; 
 int MLX5_REFORMAT_TYPE_L2_TO_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_tun_entropy*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_tun_entropy *tun_entropy,
				   int reformat_type)
{
	FUNC1(&tun_entropy->lock);
	if (reformat_type == MLX5_REFORMAT_TYPE_L2_TO_VXLAN)
		tun_entropy->num_enabling_entries--;
	else if (reformat_type == MLX5_REFORMAT_TYPE_L2_TO_NVGRE &&
		 --tun_entropy->num_disabling_entries == 0)
		FUNC0(tun_entropy, reformat_type, 1);
	FUNC2(&tun_entropy->lock);
}