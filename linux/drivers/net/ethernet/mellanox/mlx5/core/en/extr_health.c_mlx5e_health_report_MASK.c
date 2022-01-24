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
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
struct mlx5e_err_ctx {int (* recover ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  ctx; } ;
struct devlink_health_reporter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct devlink_health_reporter*,char*,struct mlx5e_err_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx5e_priv *priv,
			struct devlink_health_reporter *reporter, char *err_str,
			struct mlx5e_err_ctx *err_ctx)
{
	if (!reporter) {
		FUNC1(priv->netdev, err_str);
		return err_ctx->recover(&err_ctx->ctx);
	}
	return FUNC0(reporter, err_str, err_ctx);
}