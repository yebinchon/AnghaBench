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
struct mlx4_priv {scalar_t__ clock_mapping; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC2(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);

	if (priv->clock_mapping)
		FUNC0(priv->clock_mapping);
}