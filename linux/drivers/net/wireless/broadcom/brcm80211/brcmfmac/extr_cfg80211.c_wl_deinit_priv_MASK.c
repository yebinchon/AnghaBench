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
struct brcmf_cfg80211_info {int dongle_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*) ; 

__attribute__((used)) static void FUNC2(struct brcmf_cfg80211_info *cfg)
{
	cfg->dongle_up = false;	/* dongle down */
	FUNC0(cfg);
	FUNC1(cfg);
}