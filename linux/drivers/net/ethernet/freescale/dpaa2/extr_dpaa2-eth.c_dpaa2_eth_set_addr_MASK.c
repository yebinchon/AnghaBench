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
struct TYPE_2__ {struct device* parent; } ;
struct net_device {int /*<<< orphan*/  dev_addr; TYPE_1__ dev; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,void*) ; 
 struct dpaa2_eth_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net_dev, void *addr)
{
	struct dpaa2_eth_priv *priv = FUNC3(net_dev);
	struct device *dev = net_dev->dev.parent;
	int err;

	err = FUNC2(net_dev, addr);
	if (err < 0) {
		FUNC0(dev, "eth_mac_addr() failed (%d)\n", err);
		return err;
	}

	err = FUNC1(priv->mc_io, 0, priv->mc_token,
					net_dev->dev_addr);
	if (err) {
		FUNC0(dev, "dpni_set_primary_mac_addr() failed (%d)\n", err);
		return err;
	}

	return 0;
}