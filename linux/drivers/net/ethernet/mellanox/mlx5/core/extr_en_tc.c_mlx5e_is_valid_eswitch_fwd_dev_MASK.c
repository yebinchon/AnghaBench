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
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_priv*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct mlx5e_priv *priv,
				    struct net_device *out_dev)
{
	if (FUNC0(priv, out_dev))
		return true;

	return FUNC1(out_dev) &&
	       FUNC3(priv, FUNC2(out_dev));
}