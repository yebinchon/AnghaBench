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
struct devlink_port {int dummy; } ;
struct mlx5e_rep_priv {struct devlink_port dl_port; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;

/* Variables and functions */
 struct mlx5e_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static struct devlink_port *FUNC1(struct net_device *dev)
{
	struct mlx5e_priv *priv = FUNC0(dev);
	struct mlx5e_rep_priv *rpriv = priv->ppriv;

	return &rpriv->dl_port;
}