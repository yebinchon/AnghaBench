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
typedef  int u8 ;
typedef  int u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  MLX5_REG_PPTB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_port ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  pptb_reg ; 

int FUNC7(struct mlx5_core_dev *mdev, u8 *buffer)
{
	int sz = FUNC2(pptb_reg);
	u32 prio_x_buff;
	void *out;
	void *in;
	int prio;
	int err;

	in = FUNC4(sz, GFP_KERNEL);
	out = FUNC4(sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(pptb_reg, in, local_port, 1);
	err = FUNC5(mdev, in, sz, out, sz, MLX5_REG_PPTB, 0, 0);
	if (err)
		goto out;

	prio_x_buff = FUNC0(pptb_reg, out, prio_x_buff);
	for (prio = 0; prio < 8; prio++) {
		buffer[prio] = (u8)(prio_x_buff >> (4 * prio)) & 0xF;
		FUNC6(mdev, "prio %d, buffer %d\n", prio, buffer[prio]);
	}
out:
	FUNC3(in);
	FUNC3(out);
	return err;
}