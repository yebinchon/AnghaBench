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
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_VPORT ; 
 scalar_t__ FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

int FUNC3(struct qed_hwfn *p_hwfn, u8 src_id, u8 *dst_id)
{
	if (src_id >= FUNC1(p_hwfn, QED_VPORT)) {
		u8 min, max;

		min = (u8)FUNC2(p_hwfn, QED_VPORT);
		max = min + FUNC1(p_hwfn, QED_VPORT);
		FUNC0(p_hwfn,
			  "vport id [%d] is not valid, available indices [%d - %d]\n",
			  src_id, min, max);

		return -EINVAL;
	}

	*dst_id = FUNC2(p_hwfn, QED_VPORT) + src_id;

	return 0;
}