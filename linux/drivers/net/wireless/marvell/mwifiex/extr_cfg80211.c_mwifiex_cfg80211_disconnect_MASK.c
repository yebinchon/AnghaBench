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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct mwifiex_private {int hs2_enabled; int /*<<< orphan*/  cfg_bssid; TYPE_1__ wdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 struct mwifiex_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*) ; 

__attribute__((used)) static int
FUNC5(struct wiphy *wiphy, struct net_device *dev,
			    u16 reason_code)
{
	struct mwifiex_private *priv = FUNC3(dev);

	if (!FUNC4(priv))
		FUNC0(priv->wdev.wiphy, 0);

	if (FUNC2(priv, NULL))
		return -EFAULT;

	FUNC1(priv->cfg_bssid);
	priv->hs2_enabled = false;

	return 0;
}