#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {TYPE_2__* pub; scalar_t__ wlc; } ;
struct bcma_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 struct ieee80211_hw* FUNC0 (struct bcma_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct bcma_device *pdev)
{
	struct ieee80211_hw *hw = FUNC0(pdev);
	struct brcms_info *wl = hw->priv;

	if (wl->wlc) {
		FUNC3(wl);
		FUNC6(wl->pub->ieee_hw->wiphy, false);
		FUNC7(wl->pub->ieee_hw->wiphy);
		FUNC5(hw);
	}

	FUNC2(wl);

	FUNC1(pdev, NULL);
	FUNC4(hw);
}