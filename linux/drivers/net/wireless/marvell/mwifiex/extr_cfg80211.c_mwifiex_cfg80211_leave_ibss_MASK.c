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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int /*<<< orphan*/  cfg_bssid; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 struct mwifiex_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct wiphy *wiphy, struct net_device *dev)
{
	struct mwifiex_private *priv = FUNC3(dev);

	FUNC1(priv->adapter, MSG, "info: disconnecting from essid %pM\n",
		    priv->cfg_bssid);
	if (FUNC2(priv, NULL))
		return -EFAULT;

	FUNC0(priv->cfg_bssid);

	return 0;
}