#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * qps; TYPE_2__* indir_qp; } ;
struct mlx4_en_priv {int flags; int rx_ring_num; TYPE_4__* mdev; TYPE_3__ rss_map; scalar_t__ validate_loopback; int /*<<< orphan*/  ctrl_flags; } ;
typedef  int netdev_features_t ;
struct TYPE_6__ {int flags2; } ;
struct TYPE_10__ {TYPE_1__ caps; } ;
struct TYPE_9__ {int /*<<< orphan*/  state_lock; TYPE_5__* dev; } ;
struct TYPE_7__ {scalar_t__ qpn; } ;

/* Variables and functions */
 int MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB ; 
 int MLX4_EN_FLAG_ENABLE_HW_LOOPBACK ; 
 int MLX4_EN_FLAG_RX_FILTER_NEEDED ; 
 int /*<<< orphan*/  MLX4_WQE_CTRL_FORCE_LOOPBACK ; 
 int NETIF_F_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_en_priv*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 

void FUNC7(struct net_device *dev,
				   netdev_features_t features)
{
	struct mlx4_en_priv *priv = FUNC6(dev);

	if (features & NETIF_F_LOOPBACK)
		priv->ctrl_flags |= FUNC0(MLX4_WQE_CTRL_FORCE_LOOPBACK);
	else
		priv->ctrl_flags &= FUNC0(~MLX4_WQE_CTRL_FORCE_LOOPBACK);

	priv->flags &= ~(MLX4_EN_FLAG_RX_FILTER_NEEDED|
			MLX4_EN_FLAG_ENABLE_HW_LOOPBACK);

	/* Drop the packet if SRIOV is not enabled
	 * and not performing the selftest or flb disabled
	 */
	if (FUNC2(priv->mdev->dev) &&
	    !(features & NETIF_F_LOOPBACK) && !priv->validate_loopback)
		priv->flags |= MLX4_EN_FLAG_RX_FILTER_NEEDED;

	/* Set dmac in Tx WQE if we are in SRIOV mode or if loopback selftest
	 * is requested
	 */
	if (FUNC2(priv->mdev->dev) || priv->validate_loopback)
		priv->flags |= MLX4_EN_FLAG_ENABLE_HW_LOOPBACK;

	FUNC4(&priv->mdev->state_lock);
	if ((priv->mdev->dev->caps.flags2 &
	     MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB) &&
	    priv->rss_map.indir_qp && priv->rss_map.indir_qp->qpn) {
		int i;
		int err = 0;
		int loopback = !!(features & NETIF_F_LOOPBACK);

		for (i = 0; i < priv->rx_ring_num; i++) {
			int ret;

			ret = FUNC1(priv,
						      &priv->rss_map.qps[i],
						      loopback);
			if (!err)
				err = ret;
		}
		if (err)
			FUNC3(priv->mdev, "failed to change mcast loopback\n");
	}
	FUNC5(&priv->mdev->state_lock);
}