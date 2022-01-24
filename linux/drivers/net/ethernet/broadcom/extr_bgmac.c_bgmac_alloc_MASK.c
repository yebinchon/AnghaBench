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
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct device {int dummy; } ;
struct bgmac {struct net_device* net_dev; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  bgmac_ethtool_ops ; 
 int /*<<< orphan*/  bgmac_netdev_ops ; 
 struct net_device* FUNC0 (struct device*,int) ; 
 struct bgmac* FUNC1 (struct net_device*) ; 

struct bgmac *FUNC2(struct device *dev)
{
	struct net_device *net_dev;
	struct bgmac *bgmac;

	/* Allocation and references */
	net_dev = FUNC0(dev, sizeof(*bgmac));
	if (!net_dev)
		return NULL;

	net_dev->netdev_ops = &bgmac_netdev_ops;
	net_dev->ethtool_ops = &bgmac_ethtool_ops;

	bgmac = FUNC1(net_dev);
	bgmac->dev = dev;
	bgmac->net_dev = net_dev;

	return bgmac;
}