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
struct usbnet {int /*<<< orphan*/  mii; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int /*<<< orphan*/  eee_enabled; } ;
struct ax88179_data {int /*<<< orphan*/  eee_enabled; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*) ; 
 int FUNC3 (struct usbnet*,struct ethtool_eee*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *net, struct ethtool_eee *edata)
{
	struct usbnet *dev = FUNC5(net);
	struct ax88179_data *priv = (struct ax88179_data *)dev->data;
	int ret = -EOPNOTSUPP;

	priv->eee_enabled = edata->eee_enabled;
	if (!priv->eee_enabled) {
		FUNC1(dev);
	} else {
		priv->eee_enabled = FUNC0(dev);
		if (!priv->eee_enabled)
			return -EOPNOTSUPP;

		FUNC2(dev);
	}

	ret = FUNC3(dev, edata);
	if (ret)
		return ret;

	FUNC4(&dev->mii);

	FUNC6(dev, 0, 0);

	return ret;
}