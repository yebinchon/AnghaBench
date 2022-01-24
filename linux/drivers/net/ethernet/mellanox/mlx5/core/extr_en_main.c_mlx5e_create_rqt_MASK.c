#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_rqt {int enabled; int /*<<< orphan*/  rqtn; } ;
struct TYPE_2__ {int rqn; } ;
struct mlx5e_priv {TYPE_1__ drop_rq; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_rqt_in ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rq_num ; 
 int /*<<< orphan*/  rqt_actual_size ; 
 int /*<<< orphan*/  rqt_context ; 
 int /*<<< orphan*/  rqt_max_size ; 

__attribute__((used)) static int
FUNC6(struct mlx5e_priv *priv, int sz, struct mlx5e_rqt *rqt)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	void *rqtc;
	int inlen;
	int err;
	u32 *in;
	int i;

	inlen = FUNC2(create_rqt_in) + sizeof(u32) * sz;
	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	rqtc = FUNC0(create_rqt_in, in, rqt_context);

	FUNC1(rqtc, rqtc, rqt_actual_size, sz);
	FUNC1(rqtc, rqtc, rqt_max_size, sz);

	for (i = 0; i < sz; i++)
		FUNC1(rqtc, rqtc, rq_num[i], priv->drop_rq.rqn);

	err = FUNC5(mdev, in, inlen, &rqt->rqtn);
	if (!err)
		rqt->enabled = true;

	FUNC3(in);
	return err;
}