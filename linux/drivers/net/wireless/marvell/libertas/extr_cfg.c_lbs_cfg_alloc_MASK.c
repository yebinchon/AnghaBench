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
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct lbs_private {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct wireless_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 
 struct wireless_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lbs_cfg80211_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

struct wireless_dev *FUNC5(struct device *dev)
{
	int ret = 0;
	struct wireless_dev *wdev;

	wdev = FUNC3(sizeof(struct wireless_dev), GFP_KERNEL);
	if (!wdev)
		return FUNC0(-ENOMEM);

	wdev->wiphy = FUNC4(&lbs_cfg80211_ops, sizeof(struct lbs_private));
	if (!wdev->wiphy) {
		FUNC1(dev, "cannot allocate wiphy\n");
		ret = -ENOMEM;
		goto err_wiphy_new;
	}

	return wdev;

 err_wiphy_new:
	FUNC2(wdev);
	return FUNC0(ret);
}