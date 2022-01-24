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
struct net_device {int mtu; } ;
struct mlx4_en_priv {int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  port; scalar_t__* tx_ring_num; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EOPNOTSUPP ; 
 size_t TX_XDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, int new_mtu)
{
	struct mlx4_en_priv *priv = FUNC7(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err = 0;

	FUNC0(DRV, priv, "Change MTU called - current:%d new:%d\n",
		 dev->mtu, new_mtu);

	if (priv->tx_ring_num[TX_XDP] &&
	    !FUNC2(dev, new_mtu))
		return -EOPNOTSUPP;

	dev->mtu = new_mtu;

	if (FUNC8(dev)) {
		FUNC5(&mdev->state_lock);
		if (!mdev->device_up) {
			/* NIC is probably restarting - let watchdog task reset
			 * the port */
			FUNC0(DRV, priv, "Change MTU called with card down!?\n");
		} else {
			FUNC4(dev, 1);
			err = FUNC3(dev);
			if (err) {
				FUNC1(priv, "Failed restarting port:%d\n",
					 priv->port);
				FUNC9(mdev->workqueue, &priv->watchdog_task);
			}
		}
		FUNC6(&mdev->state_lock);
	}
	return 0;
}