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
typedef  scalar_t__ u8 ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 scalar_t__ QED_MAX_RESC ; 
 int FUNC0 (struct qed_hwfn*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct qed_hwfn *p_hwfn)
{
	int rc;
	u8 res_id;

	for (res_id = 0; res_id < QED_MAX_RESC; res_id++) {
		rc = FUNC0(p_hwfn, res_id);
		if (rc)
			return rc;
	}

	return 0;
}