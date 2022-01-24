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
struct mlx5e_priv {int dummy; } ;
struct mlx5e_err_ctx {int dummy; } ;
struct devlink_health_reporter {int dummy; } ;

/* Variables and functions */
 struct mlx5e_priv* FUNC0 (struct devlink_health_reporter*) ; 
 int FUNC1 (struct mlx5e_priv*) ; 
 int FUNC2 (struct mlx5e_err_ctx*) ; 

__attribute__((used)) static int FUNC3(struct devlink_health_reporter *reporter,
				     void *context)
{
	struct mlx5e_priv *priv = FUNC0(reporter);
	struct mlx5e_err_ctx *err_ctx = context;

	return err_ctx ? FUNC2(err_ctx) :
			 FUNC1(priv);
}