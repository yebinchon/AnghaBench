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
struct brcmf_cfg80211_vif_event {int /*<<< orphan*/  vif_event_lock; scalar_t__ action; struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_cfg80211_vif_event vif_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct brcmf_cfg80211_info *cfg,
				  struct brcmf_cfg80211_vif *vif)
{
	struct brcmf_cfg80211_vif_event *event = &cfg->vif_event;

	FUNC0(&event->vif_event_lock);
	event->vif = vif;
	event->action = 0;
	FUNC1(&event->vif_event_lock);
}