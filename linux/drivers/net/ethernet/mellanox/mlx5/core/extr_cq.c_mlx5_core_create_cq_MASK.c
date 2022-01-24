#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_eq_comp {int /*<<< orphan*/  core; int /*<<< orphan*/  tasklet_ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  uar; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * priv; } ;
struct mlx5_core_cq {void* uid; void* cqn; int /*<<< orphan*/  uar; int /*<<< orphan*/  pid; TYPE_1__ tasklet_ctx; scalar_t__ comp; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; struct mlx5_eq_comp* eq; scalar_t__ arm_sn; scalar_t__ cons_index; } ;
typedef  int /*<<< orphan*/  dout ;
typedef  int /*<<< orphan*/  din ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_eq_comp*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* MLX5_CMD_OP_CREATE_CQ ; 
 void* MLX5_CMD_OP_DESTROY_CQ ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_eq_comp*) ; 
 int /*<<< orphan*/  c_eqn ; 
 int /*<<< orphan*/  cq_context ; 
 int /*<<< orphan*/  cqc ; 
 int /*<<< orphan*/  cqn ; 
 int /*<<< orphan*/  create_cq_in ; 
 int /*<<< orphan*/  create_cq_out ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  destroy_cq_in ; 
 int /*<<< orphan*/  destroy_cq_out ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mlx5_add_cq_to_tasklet ; 
 int FUNC9 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*,char*,void*) ; 
 int FUNC11 (struct mlx5_core_dev*,struct mlx5_core_cq*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct mlx5_core_cq*) ; 
 struct mlx5_eq_comp* FUNC14 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/ * FUNC15 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uid ; 

int FUNC17(struct mlx5_core_dev *dev, struct mlx5_core_cq *cq,
			u32 *in, int inlen, u32 *out, int outlen)
{
	int eqn = FUNC3(cqc, FUNC2(create_cq_in, in, cq_context), c_eqn);
	u32 dout[FUNC5(destroy_cq_out)];
	u32 din[FUNC5(destroy_cq_in)];
	struct mlx5_eq_comp *eq;
	int err;

	eq = FUNC14(dev, eqn);
	if (FUNC1(eq))
		return FUNC6(eq);

	FUNC8(out, 0, outlen);
	FUNC4(create_cq_in, in, opcode, MLX5_CMD_OP_CREATE_CQ);
	err = FUNC9(dev, in, inlen, out, outlen);
	if (err)
		return err;

	cq->cqn = FUNC3(create_cq_out, out, cqn);
	cq->cons_index = 0;
	cq->arm_sn     = 0;
	cq->eq         = eq;
	cq->uid = FUNC3(create_cq_in, in, uid);
	FUNC16(&cq->refcount, 1);
	FUNC7(&cq->free);
	if (!cq->comp)
		cq->comp = mlx5_add_cq_to_tasklet;
	/* assuming CQ will be deleted before the EQ */
	cq->tasklet_ctx.priv = &eq->tasklet_ctx;
	FUNC0(&cq->tasklet_ctx.list);

	/* Add to comp EQ CQ tree to recv comp events */
	err = FUNC12(&eq->core, cq);
	if (err)
		goto err_cmd;

	/* Add to async EQ CQ tree to recv async events */
	err = FUNC12(FUNC15(dev), cq);
	if (err)
		goto err_cq_add;

	cq->pid = current->pid;
	err = FUNC11(dev, cq);
	if (err)
		FUNC10(dev, "failed adding CP 0x%x to debug file system\n",
			      cq->cqn);

	cq->uar = dev->priv.uar;

	return 0;

err_cq_add:
	FUNC13(&eq->core, cq);
err_cmd:
	FUNC8(din, 0, sizeof(din));
	FUNC8(dout, 0, sizeof(dout));
	FUNC4(destroy_cq_in, din, opcode, MLX5_CMD_OP_DESTROY_CQ);
	FUNC4(destroy_cq_in, din, cqn, cq->cqn);
	FUNC4(destroy_cq_in, din, uid, cq->uid);
	FUNC9(dev, din, sizeof(din), dout, sizeof(dout));
	return err;
}