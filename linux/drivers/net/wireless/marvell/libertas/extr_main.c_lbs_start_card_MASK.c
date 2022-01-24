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
struct net_device {int /*<<< orphan*/  name; } ;
struct lbs_private {struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,struct net_device*) ; 
 int /*<<< orphan*/  lbs_disablemesh ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 scalar_t__ FUNC3 (struct lbs_private*) ; 
 int FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

int FUNC9(struct lbs_private *priv)
{
	struct net_device *dev = priv->dev;
	int ret;

	/* poke the firmware */
	ret = FUNC4(priv);
	if (ret)
		goto done;

	if (!lbs_disablemesh)
		FUNC2(priv);
	else
		FUNC8("%s: mesh disabled\n", dev->name);

	ret = FUNC0(priv);
	if (ret) {
		FUNC7("cannot register device\n");
		goto done;
	}

	if (FUNC3(priv))
		FUNC5(priv);

	FUNC1(priv, dev);

	FUNC6(dev, "Marvell WLAN 802.11 adapter\n");

	ret = 0;

done:
	return ret;
}