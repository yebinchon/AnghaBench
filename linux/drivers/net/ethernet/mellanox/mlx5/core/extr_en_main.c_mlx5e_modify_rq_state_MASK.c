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
struct mlx5e_rq {int /*<<< orphan*/  rqn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 void* modify_rq_in ; 
 int /*<<< orphan*/  rq_state ; 
 int /*<<< orphan*/  state ; 

int FUNC6(struct mlx5e_rq *rq, int curr_state, int next_state)
{
	struct mlx5_core_dev *mdev = rq->mdev;

	void *in;
	void *rqc;
	int inlen;
	int err;

	inlen = FUNC2(modify_rq_in);
	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	rqc = FUNC0(modify_rq_in, in, ctx);

	FUNC1(modify_rq_in, in, rq_state, curr_state);
	FUNC1(rqc, rqc, state, next_state);

	err = FUNC5(mdev, rq->rqn, in, inlen);

	FUNC3(in);

	return err;
}