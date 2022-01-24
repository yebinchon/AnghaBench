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
struct brcmf_cfg80211_info {int pwr_save; int dongle_up; int /*<<< orphan*/  vif_disabled; int /*<<< orphan*/  conf; int /*<<< orphan*/  usr_sync; int /*<<< orphan*/ * scan_request; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*) ; 
 scalar_t__ FUNC2 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC6(struct brcmf_cfg80211_info *cfg)
{
	s32 err = 0;

	cfg->scan_request = NULL;
	cfg->pwr_save = true;
	cfg->dongle_up = false;		/* dongle is not up yet */
	err = FUNC2(cfg);
	if (err)
		return err;
	FUNC3(cfg);
	FUNC5(&cfg->usr_sync);
	FUNC1(cfg);
	FUNC0(cfg->conf);
	FUNC4(&cfg->vif_disabled);
	return err;
}