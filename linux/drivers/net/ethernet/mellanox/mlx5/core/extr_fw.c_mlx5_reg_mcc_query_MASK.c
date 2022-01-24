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
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_REG_MCC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcc_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev,
			      u32 *update_handle, u8 *error_code,
			      u8 *control_state)
{
	u32 out[FUNC2(mcc_reg)];
	u32 in[FUNC2(mcc_reg)];
	int err;

	FUNC3(in, 0, sizeof(in));
	FUNC3(out, 0, sizeof(out));
	FUNC1(mcc_reg, in, update_handle, *update_handle);

	err = FUNC4(dev, in, sizeof(in), out,
				   sizeof(out), MLX5_REG_MCC, 0, 0);
	if (err)
		goto out;

	*update_handle = FUNC0(mcc_reg, out, update_handle);
	*error_code = FUNC0(mcc_reg, out, error_code);
	*control_state = FUNC0(mcc_reg, out, control_state);

out:
	return err;
}