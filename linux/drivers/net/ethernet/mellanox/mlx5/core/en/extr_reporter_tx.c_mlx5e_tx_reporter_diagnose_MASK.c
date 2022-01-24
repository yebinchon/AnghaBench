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
struct mlx5e_txqsq {int /*<<< orphan*/  cq; int /*<<< orphan*/  wq; } ;
struct TYPE_3__ {int num_tc; } ;
struct TYPE_4__ {int num; TYPE_1__ params; struct mlx5e_channel** c; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_2__ channels; int /*<<< orphan*/  state; struct mlx5e_txqsq** txq2sq; } ;
struct mlx5e_channel {struct mlx5e_txqsq* sq; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 int FUNC0 (struct devlink_fmsg*) ; 
 int FUNC1 (struct devlink_fmsg*,char*) ; 
 int FUNC2 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC4 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct devlink_fmsg*) ; 
 int FUNC7 (struct devlink_fmsg*) ; 
 int FUNC8 (struct devlink_fmsg*,char*) ; 
 int FUNC9 (struct devlink_fmsg*,struct mlx5e_txqsq*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct devlink_health_reporter *reporter,
				      struct devlink_fmsg *fmsg)
{
	struct mlx5e_priv *priv = FUNC4(reporter);
	struct mlx5e_txqsq *generic_sq = priv->txq2sq[0];
	u32 sq_stride, sq_sz;

	int i, tc, err = 0;

	FUNC10(&priv->state_lock);

	if (!FUNC12(MLX5E_STATE_OPENED, &priv->state))
		goto unlock;

	sq_sz = FUNC5(&generic_sq->wq);
	sq_stride = MLX5_SEND_WQE_BB;

	err = FUNC8(fmsg, "Common Config");
	if (err)
		goto unlock;

	err = FUNC8(fmsg, "SQ");
	if (err)
		goto unlock;

	err = FUNC3(fmsg, "stride size", sq_stride);
	if (err)
		goto unlock;

	err = FUNC2(fmsg, "size", sq_sz);
	if (err)
		goto unlock;

	err = FUNC6(&generic_sq->cq, fmsg);
	if (err)
		goto unlock;

	err = FUNC7(fmsg);
	if (err)
		goto unlock;

	err = FUNC7(fmsg);
	if (err)
		goto unlock;

	err = FUNC1(fmsg, "SQs");
	if (err)
		goto unlock;

	for (i = 0; i < priv->channels.num; i++) {
		struct mlx5e_channel *c = priv->channels.c[i];

		for (tc = 0; tc < priv->channels.params.num_tc; tc++) {
			struct mlx5e_txqsq *sq = &c->sq[tc];

			err = FUNC9(fmsg, sq, tc);
			if (err)
				goto unlock;
		}
	}
	err = FUNC0(fmsg);
	if (err)
		goto unlock;

unlock:
	FUNC11(&priv->state_lock);
	return err;
}