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
struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int /*<<< orphan*/  stats; } ;
struct mlx4_en_priv {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link_stats64*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
	struct mlx4_en_priv *priv = FUNC1(dev);

	FUNC3(&priv->stats_lock);
	FUNC0(dev);
	FUNC2(stats, &dev->stats);
	FUNC4(&priv->stats_lock);
}