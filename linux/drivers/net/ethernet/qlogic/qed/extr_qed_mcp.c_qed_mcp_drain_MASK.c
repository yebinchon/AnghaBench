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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MSG_CODE_NIG_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 resp = 0, param = 0;
	int rc;

	rc = FUNC1(p_hwfn, p_ptt,
			 DRV_MSG_CODE_NIG_DRAIN, 1000, &resp, &param);

	/* Wait for the drain to complete before returning */
	FUNC0(1020);

	return rc;
}