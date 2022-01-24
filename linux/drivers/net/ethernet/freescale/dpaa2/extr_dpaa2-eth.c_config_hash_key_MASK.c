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
struct dpni_rx_dist_cfg {int enable; int /*<<< orphan*/  dist_size; int /*<<< orphan*/  key_cfg_iova; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  dist_cfg ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_eth_priv*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_rx_dist_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpni_rx_dist_cfg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dpaa2_eth_priv *priv, dma_addr_t key)
{
	struct device *dev = priv->net_dev->dev.parent;
	struct dpni_rx_dist_cfg dist_cfg;
	int err;

	FUNC3(&dist_cfg, 0, sizeof(dist_cfg));

	dist_cfg.key_cfg_iova = key;
	dist_cfg.dist_size = FUNC1(priv);
	dist_cfg.enable = 1;

	err = FUNC2(priv->mc_io, 0, priv->mc_token, &dist_cfg);
	if (err)
		FUNC0(dev, "dpni_set_rx_hash_dist failed\n");

	return err;
}