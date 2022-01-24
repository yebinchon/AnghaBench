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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_qp {void* uid; void* qpn; } ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_dct {int /*<<< orphan*/  drained; struct mlx5_core_qp mqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_CREATE_DCT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_RES_DCT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,struct mlx5_core_dct*,int) ; 
 int /*<<< orphan*/  create_dct_in ; 
 int /*<<< orphan*/  create_dct_out ; 
 int FUNC3 (struct mlx5_core_dev*,struct mlx5_core_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dctn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  uid ; 

int FUNC7(struct mlx5_core_dev *dev,
			 struct mlx5_core_dct *dct,
			 u32 *in, int inlen,
			 u32 *out, int outlen)
{
	struct mlx5_core_qp *qp = &dct->mqp;
	int err;

	FUNC4(&dct->drained);
	FUNC1(create_dct_in, in, opcode, MLX5_CMD_OP_CREATE_DCT);

	err = FUNC5(dev, in, inlen, out, outlen);
	if (err) {
		FUNC6(dev, "create DCT failed, ret %d\n", err);
		return err;
	}

	qp->qpn = FUNC0(create_dct_out, out, dctn);
	qp->uid = FUNC0(create_dct_in, in, uid);
	err = FUNC3(dev, qp, MLX5_RES_DCT);
	if (err)
		goto err_cmd;

	return 0;
err_cmd:
	FUNC2(dev, dct, false);
	return err;
}