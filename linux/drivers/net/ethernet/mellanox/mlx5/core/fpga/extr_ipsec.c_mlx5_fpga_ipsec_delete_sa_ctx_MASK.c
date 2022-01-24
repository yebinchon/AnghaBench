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
struct mlx5_fpga_ipsec_sa_ctx {struct mlx5_fpga_esp_xfrm* fpga_xfrm; } ;
struct mlx5_fpga_esp_xfrm {int /*<<< orphan*/  lock; int /*<<< orphan*/ * sa_ctx; int /*<<< orphan*/  num_rules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *context)
{
	struct mlx5_fpga_esp_xfrm *fpga_xfrm =
			((struct mlx5_fpga_ipsec_sa_ctx *)context)->fpga_xfrm;

	FUNC1(&fpga_xfrm->lock);
	if (!--fpga_xfrm->num_rules) {
		FUNC0(fpga_xfrm->sa_ctx);
		fpga_xfrm->sa_ctx = NULL;
	}
	FUNC2(&fpga_xfrm->lock);
}