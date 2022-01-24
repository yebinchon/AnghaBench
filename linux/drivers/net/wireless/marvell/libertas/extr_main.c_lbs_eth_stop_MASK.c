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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ connect_status; int /*<<< orphan*/  dev; scalar_t__ scan_req; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  driver_lock; } ;

/* Variables and functions */
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;

	if (priv->connect_status == LBS_CONNECTED)
		FUNC1(priv, WLAN_REASON_DEAUTH_LEAVING);

	FUNC8(&priv->driver_lock);
	FUNC7(dev);
	FUNC9(&priv->driver_lock);

	FUNC5(priv);
	FUNC0(&priv->scan_work);
	if (priv->scan_req)
		FUNC3(priv);

	FUNC6(priv->dev);

	if (!FUNC2(priv))
		FUNC4(priv);

	return 0;
}