#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int dummy; } ;
struct TYPE_3__ {int rxnfc_field; int id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DPAA2_ETH_RX_DIST_HASH ; 
 int EOPNOTSUPP ; 
 TYPE_1__* dist_fields ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_eth_priv*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct dpaa2_eth_priv* FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *net_dev, u64 flags)
{
	struct dpaa2_eth_priv *priv = FUNC3(net_dev);
	u64 key = 0;
	int i;

	if (!FUNC1(priv))
		return -EOPNOTSUPP;

	for (i = 0; i < FUNC0(dist_fields); i++)
		if (dist_fields[i].rxnfc_field & flags)
			key |= dist_fields[i].id;

	return FUNC2(net_dev, DPAA2_ETH_RX_DIST_HASH, key);
}