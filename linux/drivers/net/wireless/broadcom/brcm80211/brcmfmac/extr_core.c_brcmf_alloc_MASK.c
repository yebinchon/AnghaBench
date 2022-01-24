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
struct wiphy {int dummy; } ;
struct device {int dummy; } ;
struct cfg80211_ops {int dummy; } ;
struct brcmf_pub {struct brcmf_mp_device* settings; TYPE_1__* bus_if; struct cfg80211_ops* ops; struct wiphy* wiphy; } ;
struct brcmf_mp_device {int dummy; } ;
struct TYPE_2__ {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TRACE ; 
 struct cfg80211_ops* FUNC0 (struct brcmf_mp_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,struct device*) ; 
 struct wiphy* FUNC5 (struct cfg80211_ops*,int) ; 
 struct brcmf_pub* FUNC6 (struct wiphy*) ; 

int FUNC7(struct device *dev, struct brcmf_mp_device *settings)
{
	struct wiphy *wiphy;
	struct cfg80211_ops *ops;
	struct brcmf_pub *drvr = NULL;

	FUNC1(TRACE, "Enter\n");

	ops = FUNC0(settings);
	if (!ops)
		return -ENOMEM;

	wiphy = FUNC5(ops, sizeof(*drvr));
	if (!wiphy) {
		FUNC3(ops);
		return -ENOMEM;
	}

	FUNC4(wiphy, dev);
	drvr = FUNC6(wiphy);
	drvr->wiphy = wiphy;
	drvr->ops = ops;
	drvr->bus_if = FUNC2(dev);
	drvr->bus_if->drvr = drvr;
	drvr->settings = settings;

	return 0;
}