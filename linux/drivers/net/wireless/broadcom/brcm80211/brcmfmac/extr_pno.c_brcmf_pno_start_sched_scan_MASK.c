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
struct brcmf_pno_info {scalar_t__ n_reqs; } ;
struct brcmf_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pno_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct brcmf_pno_info*,struct cfg80211_sched_scan_request*) ; 
 struct brcmf_pno_info* FUNC4 (struct brcmf_if*) ; 

int FUNC5(struct brcmf_if *ifp,
			       struct cfg80211_sched_scan_request *req)
{
	struct brcmf_pno_info *pi;
	int ret;

	FUNC0(TRACE, "reqid=%llu\n", req->reqid);

	pi = FUNC4(ifp);
	ret = FUNC3(pi, req);
	if (ret < 0)
		return ret;

	ret = FUNC1(ifp);
	if (ret < 0) {
		FUNC2(pi, req->reqid);
		if (pi->n_reqs)
			(void)FUNC1(ifp);
		return ret;
	}
	return 0;
}