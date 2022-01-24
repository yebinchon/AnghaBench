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
struct mlx5_hv_vhca {int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_hv_vhca*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_hv_vhca*) ; 

void FUNC3(struct mlx5_hv_vhca *hv_vhca)
{
	if (FUNC0(hv_vhca))
		return;

	FUNC1(hv_vhca->work_queue);
	FUNC2(hv_vhca);
}