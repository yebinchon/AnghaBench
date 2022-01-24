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
typedef  int u16 ;
struct TYPE_2__ {int start_pq; } ;
struct qed_hwfn {TYPE_1__ qm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,...) ; 
 int /*<<< orphan*/  PQ_FLAGS_VFS ; 
 int FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qed_hwfn*) ; 

u16 FUNC3(struct qed_hwfn *p_hwfn, u16 vf)
{
	u16 max_vf = FUNC2(p_hwfn);

	if (max_vf == 0) {
		FUNC0(p_hwfn, "pq with flag 0x%lx do not exist\n",
		       PQ_FLAGS_VFS);
		return p_hwfn->qm_info.start_pq;
	}

	if (vf > max_vf)
		FUNC0(p_hwfn, "vf %d must be smaller than %d\n", vf, max_vf);

	return FUNC1(p_hwfn, PQ_FLAGS_VFS) + (vf % max_vf);
}