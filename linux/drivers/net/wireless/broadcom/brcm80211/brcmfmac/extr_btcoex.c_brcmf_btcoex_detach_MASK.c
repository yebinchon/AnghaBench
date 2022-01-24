#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct brcmf_cfg80211_info {TYPE_1__* btcoex; } ;
struct TYPE_4__ {int timer_on; int /*<<< orphan*/  work; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct brcmf_cfg80211_info *cfg)
{
	FUNC2(TRACE, "enter\n");

	if (!cfg->btcoex)
		return;

	if (cfg->btcoex->timer_on) {
		cfg->btcoex->timer_on = false;
		FUNC4(&cfg->btcoex->timer);
	}

	FUNC3(&cfg->btcoex->work);

	FUNC0(cfg->btcoex, false);
	FUNC1(cfg->btcoex);

	FUNC5(cfg->btcoex);
	cfg->btcoex = NULL;
}