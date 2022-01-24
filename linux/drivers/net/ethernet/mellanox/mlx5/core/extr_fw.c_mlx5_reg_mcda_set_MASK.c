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
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_REG_MCDA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcda_reg ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct mlx5_core_dev*,int*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev,
			     u32 update_handle,
			     u32 offset, u16 size,
			     u8 *data)
{
	int err, in_size = FUNC2(mcda_reg) + size;
	u32 out[FUNC3(mcda_reg)];
	int i, j, dw_size = size >> 2;
	__be32 data_element;
	u32 *in;

	in = FUNC6(in_size, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(mcda_reg, in, update_handle, update_handle);
	FUNC1(mcda_reg, in, offset, offset);
	FUNC1(mcda_reg, in, size, size);

	for (i = 0; i < dw_size; i++) {
		j = i * 4;
		data_element = FUNC4(*(u32 *)&data[j]);
		FUNC7(FUNC0(mcda_reg, in, data) + j, &data_element, 4);
	}

	err = FUNC8(dev, in, in_size, out,
				   sizeof(out), MLX5_REG_MCDA, 0, 1);
	FUNC5(in);
	return err;
}