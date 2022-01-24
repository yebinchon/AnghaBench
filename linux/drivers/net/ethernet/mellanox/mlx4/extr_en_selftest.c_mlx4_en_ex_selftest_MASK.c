#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct net_device {scalar_t__ mtu; } ;
struct mlx4_en_priv {scalar_t__ port_up; TYPE_3__* mdev; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int MLX4_DEV_CAP_FLAG_UC_LOOPBACK ; 
 int MLX4_EN_NUM_SELF_TEST ; 
 scalar_t__ MLX4_SELFTEST_LB_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC2 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC3 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC4 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC5 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct mlx4_en_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

void FUNC11(struct net_device *dev, u32 *flags, u64 *buf)
{
	struct mlx4_en_priv *priv = FUNC7(dev);
	int i, carrier_ok;

	FUNC0(buf, 0, sizeof(u64) * MLX4_EN_NUM_SELF_TEST);

	if (*flags & ETH_TEST_FL_OFFLINE) {
		/* disable the interface */
		carrier_ok = FUNC9(dev);

		FUNC8(dev);
		/* Wait until all tx queues are empty.
		 * there should not be any additional incoming traffic
		 * since we turned the carrier off */
		FUNC6(200);

		if (priv->mdev->dev->caps.flags &
					MLX4_DEV_CAP_FLAG_UC_LOOPBACK) {
			buf[3] = FUNC4(priv);
			if (priv->port_up && dev->mtu >= MLX4_SELFTEST_LB_MIN_MTU)
				buf[4] = FUNC3(priv);
		}

		if (carrier_ok)
			FUNC10(dev);

	}
	buf[0] = FUNC1(priv);
	buf[1] = FUNC2(priv);
	buf[2] = FUNC5(priv);

	for (i = 0; i < MLX4_EN_NUM_SELF_TEST; i++) {
		if (buf[i])
			*flags |= ETH_TEST_FL_FAILED;
	}
}