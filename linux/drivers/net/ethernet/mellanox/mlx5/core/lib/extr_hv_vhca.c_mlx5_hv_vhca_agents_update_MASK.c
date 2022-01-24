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
struct mlx5_hv_vhca {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_HV_VHCA_AGENT_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hv_vhca*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx5_hv_vhca *hv_vhca)
{
	FUNC1(hv_vhca, FUNC0(MLX5_HV_VHCA_AGENT_CONTROL));
}