#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ rss_hash_fn; int /*<<< orphan*/  rss_key; TYPE_1__* prof; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;
struct TYPE_2__ {int rss_rings; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 int /*<<< orphan*/  MLX4_EN_RSS_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,scalar_t__ const) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, const u32 *ring_index,
			    const u8 *key, const u8 hfunc)
{
	struct mlx4_en_priv *priv = FUNC9(dev);
	u32 n = FUNC4(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int port_up = 0;
	int err = 0;
	int i;
	int rss_rings = 0;

	/* Calculate RSS table size and make sure flows are spread evenly
	 * between rings
	 */
	for (i = 0; i < n; i++) {
		if (!ring_index)
			break;
		if (i > 0 && !ring_index[i] && !rss_rings)
			rss_rings = i;

		if (ring_index[i] != (i % (rss_rings ?: n)))
			return -EINVAL;
	}

	if (!rss_rings)
		rss_rings = n;

	/* RSS table size must be an order of 2 */
	if (!FUNC1(rss_rings))
		return -EINVAL;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE) {
		err = FUNC3(dev, hfunc);
		if (err)
			return err;
	}

	FUNC7(&mdev->state_lock);
	if (priv->port_up) {
		port_up = 1;
		FUNC6(dev, 1);
	}

	if (ring_index)
		priv->prof->rss_rings = rss_rings;
	if (key)
		FUNC2(priv->rss_key, key, MLX4_EN_RSS_KEY_SIZE);
	if (hfunc !=  ETH_RSS_HASH_NO_CHANGE)
		priv->rss_hash_fn = hfunc;

	if (port_up) {
		err = FUNC5(dev);
		if (err)
			FUNC0(priv, "Failed starting port\n");
	}

	FUNC8(&mdev->state_lock);
	return err;
}