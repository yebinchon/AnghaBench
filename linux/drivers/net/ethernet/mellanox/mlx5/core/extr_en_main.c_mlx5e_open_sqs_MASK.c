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
struct mlx5e_priv {int max_nch; int /*<<< orphan*/ ** tisn; } ;
struct mlx5e_params {int num_tc; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  sq; } ;
struct mlx5e_channel {int ix; size_t lag_port; int /*<<< orphan*/ * sq; struct mlx5e_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5e_channel*,int /*<<< orphan*/ ,int,struct mlx5e_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct mlx5e_channel *c,
			  struct mlx5e_params *params,
			  struct mlx5e_channel_param *cparam)
{
	struct mlx5e_priv *priv = c->priv;
	int err, tc;

	for (tc = 0; tc < params->num_tc; tc++) {
		int txq_ix = c->ix + tc * priv->max_nch;

		err = FUNC1(c, c->priv->tisn[c->lag_port][tc], txq_ix,
				       params, &cparam->sq, &c->sq[tc], tc);
		if (err)
			goto err_close_sqs;
	}

	return 0;

err_close_sqs:
	for (tc--; tc >= 0; tc--)
		FUNC0(&c->sq[tc]);

	return err;
}