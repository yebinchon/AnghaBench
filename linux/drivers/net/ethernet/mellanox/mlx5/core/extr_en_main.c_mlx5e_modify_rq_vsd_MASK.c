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
struct mlx5e_rq {int /*<<< orphan*/  rqn; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_VSD ; 
 int MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  modify_bitmask ; 
 void* modify_rq_in ; 
 int rq_state ; 
 int state ; 

__attribute__((used)) static int FUNC7(struct mlx5e_rq *rq, bool vsd)
{
	struct mlx5e_channel *c = rq->channel;
	struct mlx5_core_dev *mdev = c->mdev;
	void *in;
	void *rqc;
	int inlen;
	int err;

	inlen = FUNC3(modify_rq_in);
	in = FUNC5(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	rqc = FUNC0(modify_rq_in, in, ctx);

	FUNC1(modify_rq_in, in, rq_state, MLX5_RQC_STATE_RDY);
	FUNC2(modify_rq_in, in, modify_bitmask,
		   MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_VSD);
	FUNC1(rqc, rqc, vsd, vsd);
	FUNC1(rqc, rqc, state, MLX5_RQC_STATE_RDY);

	err = FUNC6(mdev, rq->rqn, in, inlen);

	FUNC4(in);

	return err;
}