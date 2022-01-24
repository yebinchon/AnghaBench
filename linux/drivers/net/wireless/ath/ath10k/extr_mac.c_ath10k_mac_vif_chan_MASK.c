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
struct ieee80211_vif {int /*<<< orphan*/  chanctx_conf; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {struct cfg80211_chan_def def; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ieee80211_chanctx_conf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct ieee80211_vif *vif,
			struct cfg80211_chan_def *def)
{
	struct ieee80211_chanctx_conf *conf;

	FUNC1();
	conf = FUNC0(vif->chanctx_conf);
	if (!conf) {
		FUNC2();
		return -ENOENT;
	}

	*def = conf->def;
	FUNC2();

	return 0;
}