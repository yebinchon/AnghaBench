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
struct rhine_private {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_if_info {int /*<<< orphan*/  force_media; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  link ; 
 struct rhine_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rhine_private*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mii_if_info *mii)
{
	struct net_device *dev = mii->dev;
	struct rhine_private *rp = FUNC0(dev);

	if (mii->force_media) {
		/* autoneg is off: Link is always assumed to be up */
		if (!FUNC1(dev))
			FUNC2(dev);
	}

	FUNC4(dev, 0);

	FUNC3(rp, link, dev, "force_media %d, carrier %d\n",
		   mii->force_media, FUNC1(dev));
}