#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct virt_wifi_netdev_priv {int being_deleted; int is_connected; int is_up; TYPE_1__* lowerdev; int /*<<< orphan*/  connect; struct net_device* upperdev; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ mtu; TYPE_5__* ieee80211_ptr; } ;
struct net {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  iftype; } ;
struct TYPE_9__ {scalar_t__ mtu; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  common_wiphy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_5__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct virt_wifi_netdev_priv* FUNC8 (struct net_device*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct virt_wifi_netdev_priv*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct nlattr*) ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  virt_wifi_connect_complete ; 
 int /*<<< orphan*/  virt_wifi_rx_handler ; 

__attribute__((used)) static int FUNC17(struct net *src_net, struct net_device *dev,
			     struct nlattr *tb[], struct nlattr *data[],
			     struct netlink_ext_ack *extack)
{
	struct virt_wifi_netdev_priv *priv = FUNC8(dev);
	int err;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	FUNC12(dev);

	priv->upperdev = dev;
	priv->lowerdev = FUNC2(src_net,
					    FUNC14(tb[IFLA_LINK]));

	if (!priv->lowerdev)
		return -ENODEV;
	if (!tb[IFLA_MTU])
		dev->mtu = priv->lowerdev->mtu;
	else if (dev->mtu > priv->lowerdev->mtu)
		return -EINVAL;

	err = FUNC9(priv->lowerdev, virt_wifi_rx_handler,
					 priv);
	if (err) {
		FUNC4(&priv->lowerdev->dev,
			"can't netdev_rx_handler_register: %d\n", err);
		return err;
	}

	FUNC5(dev, priv->lowerdev);
	FUNC13(priv->lowerdev, dev);

	FUNC1(dev, &priv->lowerdev->dev);
	dev->ieee80211_ptr = FUNC7(sizeof(*dev->ieee80211_ptr), GFP_KERNEL);

	if (!dev->ieee80211_ptr) {
		err = -ENOMEM;
		goto remove_handler;
	}

	dev->ieee80211_ptr->iftype = NL80211_IFTYPE_STATION;
	dev->ieee80211_ptr->wiphy = common_wiphy;

	err = FUNC15(dev);
	if (err) {
		FUNC4(&priv->lowerdev->dev, "can't register_netdevice: %d\n",
			err);
		goto free_wireless_dev;
	}

	err = FUNC11(priv->lowerdev, dev, extack);
	if (err) {
		FUNC4(&priv->lowerdev->dev, "can't netdev_upper_dev_link: %d\n",
			err);
		goto unregister_netdev;
	}

	priv->being_deleted = false;
	priv->is_connected = false;
	priv->is_up = false;
	FUNC0(&priv->connect, virt_wifi_connect_complete);
	FUNC3(THIS_MODULE);

	return 0;
unregister_netdev:
	FUNC16(dev);
free_wireless_dev:
	FUNC6(dev->ieee80211_ptr);
	dev->ieee80211_ptr = NULL;
remove_handler:
	FUNC10(priv->lowerdev);

	return err;
}