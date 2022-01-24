#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cfg80211_sched_scan_request {int n_match_sets; struct cfg80211_match_set* match_sets; } ;
struct TYPE_3__ {scalar_t__ ssid_len; } ;
struct cfg80211_match_set {int /*<<< orphan*/  bssid; TYPE_1__ ssid; } ;
struct brcmf_pno_info {int n_reqs; struct cfg80211_sched_scan_request** reqs; } ;
struct brcmf_if {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct cfg80211_sched_scan_request*) ; 
 int FUNC1 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcmf_if*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct brcmf_if *ifp,
				     struct brcmf_pno_info *pi)
{
	struct cfg80211_sched_scan_request *r;
	struct cfg80211_match_set *ms;
	bool active;
	int i, j, err = 0;

	for (i = 0; i < pi->n_reqs; i++) {
		r = pi->reqs[i];

		for (j = 0; j < r->n_match_sets; j++) {
			ms = &r->match_sets[j];
			if (ms->ssid.ssid_len) {
				active = FUNC0(&ms->ssid, r);
				err = FUNC2(ifp, &ms->ssid,
							 active);
			}
			if (!err && FUNC3(ms->bssid))
				err = FUNC1(ifp, ms->bssid);

			if (err < 0)
				return err;
		}
	}
	return 0;
}