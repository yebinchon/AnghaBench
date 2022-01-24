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
typedef  int /*<<< orphan*/  u32 ;
struct cfg80211_sched_scan_request {int n_match_sets; struct cfg80211_match_set* match_sets; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; } ;
struct cfg80211_match_set {int /*<<< orphan*/  bssid; TYPE_1__ ssid; } ;
struct brcmf_pno_net_info_le {int /*<<< orphan*/  bssid; int /*<<< orphan*/  SSID_len; int /*<<< orphan*/  SSID; } ;
struct brcmf_pno_info {int n_reqs; int /*<<< orphan*/  req_lock; struct cfg80211_sched_scan_request** reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32 FUNC5(struct brcmf_pno_info *pi,
			     struct brcmf_pno_net_info_le *ni)
{
	struct cfg80211_sched_scan_request *req;
	struct cfg80211_match_set *ms;
	u32 bucket_map = 0;
	int i, j;

	FUNC3(&pi->req_lock);
	for (i = 0; i < pi->n_reqs; i++) {
		req = pi->reqs[i];

		if (!req->n_match_sets)
			continue;
		for (j = 0; j < req->n_match_sets; j++) {
			ms = &req->match_sets[j];
			if (ms->ssid.ssid_len == ni->SSID_len &&
			    !FUNC2(ms->ssid.ssid, ni->SSID, ni->SSID_len)) {
				bucket_map |= FUNC0(i);
				break;
			}
			if (FUNC1(ms->bssid) &&
			    !FUNC2(ms->bssid, ni->bssid, ETH_ALEN)) {
				bucket_map |= FUNC0(i);
				break;
			}
		}
	}
	FUNC4(&pi->req_lock);
	return bucket_map;
}