#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_9__ {int /*<<< orphan*/  wq; } ;
struct TYPE_7__ {int head; } ;
struct TYPE_8__ {TYPE_2__ wq; } ;
struct mlx5e_rq {int rqn; int /*<<< orphan*/  cq; int /*<<< orphan*/  state; TYPE_5__* channel; TYPE_4__ wqe; TYPE_3__ mpwqe; } ;
struct mlx5e_params {scalar_t__ rq_wq_type; } ;
struct TYPE_6__ {struct mlx5e_params params; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; TYPE_1__ channels; } ;
struct mlx5e_icosq {int /*<<< orphan*/  sqn; } ;
struct devlink_fmsg {int dummy; } ;
struct TYPE_10__ {int ix; struct mlx5e_icosq icosq; struct mlx5e_priv* priv; } ;

/* Variables and functions */
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ; 
 int FUNC0 (struct devlink_fmsg*) ; 
 int FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*,char*,int) ; 
 int FUNC3 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct devlink_fmsg*) ; 
 int FUNC8 (struct mlx5e_rq*) ; 

__attribute__((used)) static int FUNC9(struct mlx5e_rq *rq,
						   struct devlink_fmsg *fmsg)
{
	struct mlx5e_priv *priv = rq->channel->priv;
	struct mlx5e_params *params;
	struct mlx5e_icosq *icosq;
	u8 icosq_hw_state;
	int wqes_sz;
	u8 hw_state;
	u16 wq_head;
	int err;

	params = &priv->channels.params;
	icosq = &rq->channel->icosq;
	err = FUNC6(priv->mdev, rq->rqn, &hw_state);
	if (err)
		return err;

	err = FUNC4(priv->mdev, icosq->sqn, &icosq_hw_state);
	if (err)
		return err;

	wqes_sz = FUNC8(rq);
	wq_head = params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ?
		  rq->mpwqe.wq.head : FUNC5(&rq->wqe.wq);

	err = FUNC1(fmsg);
	if (err)
		return err;

	err = FUNC2(fmsg, "channel ix", rq->channel->ix);
	if (err)
		return err;

	err = FUNC2(fmsg, "rqn", rq->rqn);
	if (err)
		return err;

	err = FUNC3(fmsg, "HW state", hw_state);
	if (err)
		return err;

	err = FUNC3(fmsg, "SW state", rq->state);
	if (err)
		return err;

	err = FUNC2(fmsg, "posted WQEs", wqes_sz);
	if (err)
		return err;

	err = FUNC2(fmsg, "cc", wq_head);
	if (err)
		return err;

	err = FUNC3(fmsg, "ICOSQ HW state", icosq_hw_state);
	if (err)
		return err;

	err = FUNC7(&rq->cq, fmsg);
	if (err)
		return err;

	err = FUNC0(fmsg);
	if (err)
		return err;

	return 0;
}