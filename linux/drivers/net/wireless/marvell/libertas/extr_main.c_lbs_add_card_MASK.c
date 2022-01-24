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
struct wireless_dev {struct net_device* netdev; int /*<<< orphan*/  iftype; } ;
struct net_device {int watchdog_timeo; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; struct lbs_private* ml_priv; struct wireless_dev* ieee80211_ptr; } ;
struct lbs_private {int wol_gpio; int wol_gap; int ehs_remove_supported; int /*<<< orphan*/  wol_criteria; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  work_thread; struct wireless_dev* main_thread; int /*<<< orphan*/  waitq; void* card; struct net_device* dev; struct wireless_dev* wdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHS_REMOVE_WAKEUP ; 
 int ENOMEM ; 
 struct lbs_private* FUNC0 (int) ; 
 int HZ ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wireless_dev*) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct device*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct wireless_dev* FUNC10 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 struct wireless_dev* FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  lbs_ethtool_ops ; 
 int /*<<< orphan*/  FUNC14 (struct lbs_private*) ; 
 int FUNC15 (struct lbs_private*) ; 
 int /*<<< orphan*/  lbs_netdev_ops ; 
 int /*<<< orphan*/  lbs_set_mcast_worker ; 
 int /*<<< orphan*/  lbs_thread ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 struct lbs_private* FUNC18 (struct wireless_dev*) ; 

struct lbs_private *FUNC19(void *card, struct device *dmdev)
{
	struct net_device *dev;
	struct wireless_dev *wdev;
	struct lbs_private *priv = NULL;
	int err;

	/* Allocate an Ethernet device and register it */
	wdev = FUNC11(dmdev);
	if (FUNC2(wdev)) {
		err = FUNC3(wdev);
		FUNC16("cfg80211 init failed\n");
		goto err_cfg;
	}

	wdev->iftype = NL80211_IFTYPE_STATION;
	priv = FUNC18(wdev);
	priv->wdev = wdev;

	err = FUNC15(priv);
	if (err) {
		FUNC16("failed to initialize adapter structure\n");
		goto err_wdev;
	}

	dev = FUNC5(0, "wlan%d", NET_NAME_UNKNOWN, ether_setup);
	if (!dev) {
		err = -ENOMEM;
		FUNC7(dmdev, "no memory for network device instance\n");
		goto err_adapter;
	}

	dev->ieee80211_ptr = wdev;
	dev->ml_priv = priv;
	FUNC4(dev, dmdev);
	wdev->netdev = dev;
	priv->dev = dev;

 	dev->netdev_ops = &lbs_netdev_ops;
	dev->watchdog_timeo = 5 * HZ;
	dev->ethtool_ops = &lbs_ethtool_ops;
	dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

	priv->card = card;

	FUNC17(dev->name, "wlan%d");

	FUNC13("Starting main thread...\n");
	FUNC9(&priv->waitq);
	priv->main_thread = FUNC10(lbs_thread, dev, "lbs_main");
	if (FUNC2(priv->main_thread)) {
		err = FUNC3(priv->main_thread);
		FUNC13("Error creating main thread.\n");
		goto err_ndev;
	}

	priv->work_thread = FUNC6("lbs_worker");
	FUNC1(&priv->mcast_work, lbs_set_mcast_worker);

	priv->wol_criteria = EHS_REMOVE_WAKEUP;
	priv->wol_gpio = 0xff;
	priv->wol_gap = 20;
	priv->ehs_remove_supported = true;

	return priv;

 err_ndev:
	FUNC8(dev);

 err_adapter:
	FUNC14(priv);

 err_wdev:
	FUNC12(priv);

 err_cfg:
	return FUNC0(err);
}