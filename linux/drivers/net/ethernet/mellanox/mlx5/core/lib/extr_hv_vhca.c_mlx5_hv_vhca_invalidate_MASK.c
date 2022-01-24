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
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_hv_vhca_work {int /*<<< orphan*/  invalidate_work; int /*<<< orphan*/  block_mask; struct mlx5_hv_vhca* hv_vhca; } ;
struct mlx5_hv_vhca {int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx5_hv_vhca_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_hv_vhca_invalidate_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void *context, u64 block_mask)
{
	struct mlx5_hv_vhca *hv_vhca = (struct mlx5_hv_vhca *)context;
	struct mlx5_hv_vhca_work *work;

	work = FUNC1(sizeof(*work), GFP_ATOMIC);
	if (!work)
		return;

	FUNC0(&work->invalidate_work, mlx5_hv_vhca_invalidate_work);
	work->hv_vhca    = hv_vhca;
	work->block_mask = block_mask;

	FUNC2(hv_vhca->work_queue, &work->invalidate_work);
}