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
struct mlx5_core_qp {int /*<<< orphan*/  uid; int /*<<< orphan*/  qpn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_RES_RQ ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_core_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_rq_in ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uid ; 

int FUNC4(struct mlx5_core_dev *dev, u32 *in, int inlen,
				struct mlx5_core_qp *rq)
{
	int err;
	u32 rqn;

	err = FUNC3(dev, in, inlen, &rqn);
	if (err)
		return err;

	rq->uid = FUNC0(create_rq_in, in, uid);
	rq->qpn = rqn;
	err = FUNC1(dev, rq, MLX5_RES_RQ);
	if (err)
		goto err_destroy_rq;

	return 0;

err_destroy_rq:
	FUNC2(dev, rq->qpn, rq->uid);

	return err;
}