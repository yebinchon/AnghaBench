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
typedef  int /*<<< orphan*/  u64 ;
struct brcmf_pno_info {scalar_t__ n_reqs; } ;
struct brcmf_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*) ; 
 int FUNC3 (struct brcmf_pno_info*,int /*<<< orphan*/ ) ; 
 struct brcmf_pno_info* FUNC4 (struct brcmf_if*) ; 

int FUNC5(struct brcmf_if *ifp, u64 reqid)
{
	struct brcmf_pno_info *pi;
	int err;

	FUNC0(TRACE, "reqid=%llu\n", reqid);

	pi = FUNC4(ifp);

	/* No PNO request */
	if (!pi->n_reqs)
		return 0;

	err = FUNC3(pi, reqid);
	if (err)
		return err;

	FUNC1(ifp);

	if (pi->n_reqs)
		(void)FUNC2(ifp);

	return 0;
}