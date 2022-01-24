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
struct mlx5e_rep_priv {int /*<<< orphan*/  dl_port; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_core_dev *dev,
				    struct mlx5e_rep_priv *rpriv)
{
	if (FUNC1(dev, rpriv))
		FUNC0(&rpriv->dl_port);
}