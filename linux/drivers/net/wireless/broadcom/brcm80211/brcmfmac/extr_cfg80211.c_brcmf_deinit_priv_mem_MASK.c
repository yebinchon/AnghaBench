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
struct TYPE_3__ {int /*<<< orphan*/ * escan_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * nd_info; int /*<<< orphan*/ * nd; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; TYPE_2__ wowl; int /*<<< orphan*/ * extra_buf; int /*<<< orphan*/ * conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct brcmf_cfg80211_info *cfg)
{
	FUNC0(cfg->conf);
	cfg->conf = NULL;
	FUNC0(cfg->extra_buf);
	cfg->extra_buf = NULL;
	FUNC0(cfg->wowl.nd);
	cfg->wowl.nd = NULL;
	FUNC0(cfg->wowl.nd_info);
	cfg->wowl.nd_info = NULL;
	FUNC0(cfg->escan_info.escan_buf);
	cfg->escan_info.escan_buf = NULL;
}