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
struct mlx5e_priv {scalar_t__ rx_reporter; scalar_t__ tx_reporter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC1(struct mlx5e_priv *priv)
{
	if (priv->tx_reporter)
		FUNC0(priv->tx_reporter,
						     DEVLINK_HEALTH_REPORTER_STATE_HEALTHY);
	if (priv->rx_reporter)
		FUNC0(priv->rx_reporter,
						     DEVLINK_HEALTH_REPORTER_STATE_HEALTHY);
}