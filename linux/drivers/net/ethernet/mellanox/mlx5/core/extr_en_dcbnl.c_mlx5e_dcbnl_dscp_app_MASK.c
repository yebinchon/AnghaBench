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
struct TYPE_4__ {int dscp_app_cnt; } ;
struct TYPE_3__ {scalar_t__ trust_state; int /*<<< orphan*/ * dscp2prio; } ;
struct mlx5e_priv {TYPE_2__ dcbx; int /*<<< orphan*/  netdev; TYPE_1__ dcbx_dp; int /*<<< orphan*/  mdev; } ;
struct dcb_app {int protocol; int /*<<< orphan*/  priority; int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE_8021QAZ_APP_SEL_DSCP ; 
 int INIT ; 
 int MLX5E_MAX_DSCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_QPTS_TRUST_DSCP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dcb_app*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dcb_app*) ; 
 int /*<<< orphan*/  vport_group_manager ; 

__attribute__((used)) static void FUNC4(struct mlx5e_priv *priv, int action)
{
	struct dcb_app temp;
	int i;

	if (!FUNC0(priv->mdev, vport_group_manager))
		return;

	if (!FUNC1(priv->mdev))
		return;

	/* No SEL_DSCP entry in non DSCP state */
	if (priv->dcbx_dp.trust_state != MLX5_QPTS_TRUST_DSCP)
		return;

	temp.selector = IEEE_8021QAZ_APP_SEL_DSCP;
	for (i = 0; i < MLX5E_MAX_DSCP; i++) {
		temp.protocol = i;
		temp.priority = priv->dcbx_dp.dscp2prio[i];
		if (action == INIT)
			FUNC3(priv->netdev, &temp);
		else
			FUNC2(priv->netdev, &temp);
	}

	priv->dcbx.dscp_app_cnt = (action == INIT) ? MLX5E_MAX_DSCP : 0;
}