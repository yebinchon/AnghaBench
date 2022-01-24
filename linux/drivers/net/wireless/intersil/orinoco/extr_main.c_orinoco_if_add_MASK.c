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
struct wireless_dev {int /*<<< orphan*/  iftype; struct wiphy* wiphy; } ;
struct wiphy {int /*<<< orphan*/  perm_addr; } ;
struct orinoco_private {int /*<<< orphan*/  dev; struct net_device* ndev; int /*<<< orphan*/  wireless_data; } ;
struct net_device_ops {int dummy; } ;
struct net_device {unsigned long base_addr; unsigned int irq; int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  needed_headroom; struct net_device_ops const* netdev_ops; int /*<<< orphan*/ * wireless_data; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/  watchdog_timeo; struct wireless_dev* ieee80211_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENCAPS_OVERHEAD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  ORINOCO_MAX_MTU ; 
 int /*<<< orphan*/  ORINOCO_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  orinoco_handler_def ; 
 struct net_device_ops const orinoco_netdev_ops ; 
 struct wiphy* FUNC7 (struct orinoco_private*) ; 
 int FUNC8 (struct net_device*) ; 

int FUNC9(struct orinoco_private *priv,
		   unsigned long base_addr,
		   unsigned int irq,
		   const struct net_device_ops *ops)
{
	struct wiphy *wiphy = FUNC7(priv);
	struct wireless_dev *wdev;
	struct net_device *dev;
	int ret;

	dev = FUNC1(sizeof(struct wireless_dev));

	if (!dev)
		return -ENOMEM;

	/* Initialise wireless_dev */
	wdev = FUNC5(dev);
	wdev->wiphy = wiphy;
	wdev->iftype = NL80211_IFTYPE_STATION;

	/* Setup / override net_device fields */
	dev->ieee80211_ptr = wdev;
	dev->watchdog_timeo = HZ; /* 1 second timeout */
	dev->wireless_handlers = &orinoco_handler_def;
#ifdef WIRELESS_SPY
	dev->wireless_data = &priv->wireless_data;
#endif
	/* Default to standard ops if not set */
	if (ops)
		dev->netdev_ops = ops;
	else
		dev->netdev_ops = &orinoco_netdev_ops;

	/* we use the default eth_mac_addr for setting the MAC addr */

	/* Reserve space in skb for the SNAP header */
	dev->needed_headroom = ENCAPS_OVERHEAD;

	FUNC6(dev);

	FUNC4(dev->dev_addr, wiphy->perm_addr, ETH_ALEN);

	dev->base_addr = base_addr;
	dev->irq = irq;

	dev->min_mtu = ORINOCO_MIN_MTU;
	dev->max_mtu = ORINOCO_MAX_MTU;

	FUNC0(dev, priv->dev);
	ret = FUNC8(dev);
	if (ret)
		goto fail;

	priv->ndev = dev;

	/* Report what we've done */
	FUNC2(priv->dev, "Registered interface %s.\n", dev->name);

	return 0;

 fail:
	FUNC3(dev);
	return ret;
}