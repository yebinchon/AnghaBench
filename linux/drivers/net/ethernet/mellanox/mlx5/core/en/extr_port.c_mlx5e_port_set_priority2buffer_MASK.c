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
 int /*<<< orphan*/  MLX5_REG_PPTB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int local_port ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int pm ; 
 int /*<<< orphan*/  pptb_reg ; 

int FUNC6(struct mlx5_core_dev *mdev, u8 *buffer)
{
	int sz = FUNC1(pptb_reg);
	u32 prio_x_buff;
	void *out;
	void *in;
	int prio;
	int err;

	in = FUNC3(sz, GFP_KERNEL);
	out = FUNC3(sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	/* First query the pptb register */
	FUNC0(pptb_reg, in, local_port, 1);
	err = FUNC5(mdev, in, sz, out, sz, MLX5_REG_PPTB, 0, 0);
	if (err)
		goto out;

	FUNC4(in, out, sz);
	FUNC0(pptb_reg, in, local_port, 1);

	/* Update the pm and prio_x_buff */
	FUNC0(pptb_reg, in, pm, 0xFF);

	prio_x_buff = 0;
	for (prio = 0; prio < 8; prio++)
		prio_x_buff |= (buffer[prio] << (4 * prio));
	FUNC0(pptb_reg, in, prio_x_buff, prio_x_buff);

	err = FUNC5(mdev, in, sz, out, sz, MLX5_REG_PPTB, 0, 1);

out:
	FUNC2(in);
	FUNC2(out);
	return err;
}