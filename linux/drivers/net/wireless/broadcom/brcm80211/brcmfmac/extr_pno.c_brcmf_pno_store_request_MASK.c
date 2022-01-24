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
struct cfg80211_sched_scan_request {int /*<<< orphan*/  reqid; } ;
struct brcmf_pno_info {scalar_t__ n_reqs; int /*<<< orphan*/  req_lock; struct cfg80211_sched_scan_request** reqs; } ;

/* Variables and functions */
 scalar_t__ BRCMF_PNO_MAX_BUCKETS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  SCAN ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct brcmf_pno_info *pi,
				   struct cfg80211_sched_scan_request *req)
{
	if (FUNC0(pi->n_reqs == BRCMF_PNO_MAX_BUCKETS,
		 "pno request storage full\n"))
		return -ENOSPC;

	FUNC1(SCAN, "reqid=%llu\n", req->reqid);
	FUNC2(&pi->req_lock);
	pi->reqs[pi->n_reqs++] = req;
	FUNC3(&pi->req_lock);
	return 0;
}