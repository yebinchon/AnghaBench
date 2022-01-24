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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  rss_hash_fn; int /*<<< orphan*/  rss_key; TYPE_1__* prof; } ;
struct TYPE_2__ {scalar_t__ rss_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_EN_RSS_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 
 size_t FUNC3 (size_t) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, u32 *ring_index, u8 *key,
			    u8 *hfunc)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	u32 n = FUNC1(dev);
	u32 i, rss_rings;
	int err = 0;

	rss_rings = priv->prof->rss_rings ?: n;
	rss_rings = FUNC3(rss_rings);

	for (i = 0; i < n; i++) {
		if (!ring_index)
			break;
		ring_index[i] = i % rss_rings;
	}
	if (key)
		FUNC0(key, priv->rss_key, MLX4_EN_RSS_KEY_SIZE);
	if (hfunc)
		*hfunc = priv->rss_hash_fn;
	return err;
}