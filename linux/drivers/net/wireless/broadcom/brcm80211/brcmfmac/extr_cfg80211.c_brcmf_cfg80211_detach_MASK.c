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
struct brcmf_cfg80211_info {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_cfg80211_info*) ; 

void FUNC6(struct brcmf_cfg80211_info *cfg)
{
	if (!cfg)
		return;

	FUNC2(cfg);
	FUNC0(cfg);
	FUNC4(cfg->wiphy);
	FUNC5(cfg);
	FUNC1(cfg->wiphy);
	FUNC3(cfg);
}