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
struct wireless_dev {scalar_t__ wiphy; } ;
struct lbs_private {scalar_t__ wiphy_registered; struct wireless_dev* wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct lbs_private *priv)
{
	struct wireless_dev *wdev = priv->wdev;

	if (!wdev)
		return;

	if (priv->wiphy_registered)
		FUNC2(wdev->wiphy);

	if (wdev->wiphy)
		FUNC1(wdev->wiphy);

	FUNC0(wdev);
}