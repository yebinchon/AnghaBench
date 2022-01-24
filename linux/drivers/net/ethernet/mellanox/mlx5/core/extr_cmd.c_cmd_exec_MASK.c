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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {scalar_t__ state; int /*<<< orphan*/  cmd; int /*<<< orphan*/  pdev; } ;
struct mlx5_cmd_msg {int dummy; } ;
typedef  int /*<<< orphan*/  mlx5_cmd_cbk_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_cmd_msg*) ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct mlx5_cmd_msg*) ; 
 struct mlx5_cmd_msg* FUNC4 (struct mlx5_core_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,struct mlx5_cmd_msg*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  mbox_in ; 
 int /*<<< orphan*/  mbox_out ; 
 struct mlx5_cmd_msg* FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC9 (struct mlx5_core_dev*,struct mlx5_cmd_msg*,struct mlx5_cmd_msg*,void*,int,int /*<<< orphan*/ ,void*,int,scalar_t__*,scalar_t__,int) ; 
 int FUNC10 (void*,struct mlx5_cmd_msg*,int) ; 
 int FUNC11 (struct mlx5_cmd_msg*,void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_core_dev*,struct mlx5_cmd_msg*) ; 
 int FUNC15 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  opcode ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__) ; 
 scalar_t__ syndrome ; 

__attribute__((used)) static int FUNC18(struct mlx5_core_dev *dev, void *in, int in_size, void *out,
		    int out_size, mlx5_cmd_cbk_t callback, void *context,
		    bool force_polling)
{
	struct mlx5_cmd_msg *inb;
	struct mlx5_cmd_msg *outb;
	int pages_queue;
	gfp_t gfp;
	int err;
	u8 status = 0;
	u32 drv_synd;
	u8 token;

	if (FUNC16(dev->pdev) ||
	    dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
		u16 opcode = FUNC1(mbox_in, in, opcode);

		err = FUNC15(dev, opcode, &drv_synd, &status);
		FUNC2(mbox_out, out, status, status);
		FUNC2(mbox_out, out, syndrome, drv_synd);
		return err;
	}

	pages_queue = FUNC7(in);
	gfp = callback ? GFP_ATOMIC : GFP_KERNEL;

	inb = FUNC4(dev, in_size, gfp);
	if (FUNC0(inb)) {
		err = FUNC3(inb);
		return err;
	}

	token = FUNC5(&dev->cmd);

	err = FUNC11(inb, in, in_size, token);
	if (err) {
		FUNC13(dev, "err %d\n", err);
		goto out_in;
	}

	outb = FUNC8(dev, gfp, out_size, token);
	if (FUNC0(outb)) {
		err = FUNC3(outb);
		goto out_in;
	}

	err = FUNC9(dev, inb, outb, out, out_size, callback, context,
			      pages_queue, &status, token, force_polling);
	if (err)
		goto out_out;

	FUNC12(dev, "err %d, status %d\n", err, status);
	if (status) {
		err = FUNC17(status);
		goto out_out;
	}

	if (!callback)
		err = FUNC10(out, outb, out_size);

out_out:
	if (!callback)
		FUNC14(dev, outb);

out_in:
	if (!callback)
		FUNC6(dev, inb);
	return err;
}