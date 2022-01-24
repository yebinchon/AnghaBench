#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_rq {int /*<<< orphan*/  cq; } ;
struct mlx5e_params {int /*<<< orphan*/  rq_wq_type; } ;
struct TYPE_4__ {int num; TYPE_1__** c; struct mlx5e_params params; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_2__ channels; int /*<<< orphan*/  mdev; int /*<<< orphan*/  state; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink_fmsg {int dummy; } ;
struct TYPE_3__ {struct mlx5e_rq rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*,char*) ; 
 int FUNC3 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC6 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct devlink_fmsg*) ; 
 int FUNC9 (struct devlink_fmsg*) ; 
 int FUNC10 (struct devlink_fmsg*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_rq*) ; 
 int FUNC12 (struct mlx5e_rq*,struct devlink_fmsg*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct devlink_health_reporter *reporter,
				      struct devlink_fmsg *fmsg)
{
	struct mlx5e_priv *priv = FUNC6(reporter);
	struct mlx5e_params *params = &priv->channels.params;
	struct mlx5e_rq *generic_rq;
	u32 rq_stride, rq_sz;
	int i, err = 0;

	FUNC13(&priv->state_lock);

	if (!FUNC15(MLX5E_STATE_OPENED, &priv->state))
		goto unlock;

	generic_rq = &priv->channels.c[0]->rq;
	rq_sz = FUNC11(generic_rq);
	rq_stride = FUNC0(FUNC7(priv->mdev, params, NULL));

	err = FUNC10(fmsg, "Common config");
	if (err)
		goto unlock;

	err = FUNC10(fmsg, "RQ");
	if (err)
		goto unlock;

	err = FUNC5(fmsg, "type", params->rq_wq_type);
	if (err)
		goto unlock;

	err = FUNC4(fmsg, "stride size", rq_stride);
	if (err)
		goto unlock;

	err = FUNC3(fmsg, "size", rq_sz);
	if (err)
		goto unlock;

	err = FUNC9(fmsg);
	if (err)
		goto unlock;

	err = FUNC8(&generic_rq->cq, fmsg);
	if (err)
		goto unlock;

	err = FUNC9(fmsg);
	if (err)
		goto unlock;

	err = FUNC2(fmsg, "RQs");
	if (err)
		goto unlock;

	for (i = 0; i < priv->channels.num; i++) {
		struct mlx5e_rq *rq = &priv->channels.c[i]->rq;

		err = FUNC12(rq, fmsg);
		if (err)
			goto unlock;
	}
	err = FUNC1(fmsg);
	if (err)
		goto unlock;
unlock:
	FUNC14(&priv->state_lock);
	return err;
}