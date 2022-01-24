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
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;
typedef  enum mlxsw_reg_mcc_instruction { ____Placeholder_mlxsw_reg_mcc_instruction } mlxsw_reg_mcc_instruction ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_REG_MCC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int instruction ; 
 int /*<<< orphan*/  mcc_reg ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev,
			    enum mlxsw_reg_mcc_instruction instr,
			    u16 component_index, u32 update_handle,
			    u32 component_size)
{
	u32 out[FUNC1(mcc_reg)];
	u32 in[FUNC1(mcc_reg)];

	FUNC2(in, 0, sizeof(in));

	FUNC0(mcc_reg, in, instruction, instr);
	FUNC0(mcc_reg, in, component_index, component_index);
	FUNC0(mcc_reg, in, update_handle, update_handle);
	FUNC0(mcc_reg, in, component_size, component_size);

	return FUNC3(dev, in, sizeof(in), out,
				    sizeof(out), MLX5_REG_MCC, 0, 1);
}