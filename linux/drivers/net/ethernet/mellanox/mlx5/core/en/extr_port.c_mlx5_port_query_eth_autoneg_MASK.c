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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_PTYS_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ptys_reg ; 

void FUNC3(struct mlx5_core_dev *dev, u8 *an_status,
				 u8 *an_disable_cap, u8 *an_disable_admin)
{
	u32 out[FUNC1(ptys_reg)];

	*an_status = 0;
	*an_disable_cap = 0;
	*an_disable_admin = 0;

	if (FUNC2(dev, out, sizeof(out), MLX5_PTYS_EN, 1))
		return;

	*an_status = FUNC0(ptys_reg, out, an_status);
	*an_disable_cap = FUNC0(ptys_reg, out, an_disable_cap);
	*an_disable_admin = FUNC0(ptys_reg, out, an_disable_admin);
}