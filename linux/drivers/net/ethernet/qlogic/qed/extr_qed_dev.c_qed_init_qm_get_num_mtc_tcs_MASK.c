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
typedef  int u8 ;
typedef  int u32 ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int PQ_FLAGS_MTC ; 
 int FUNC0 (struct qed_hwfn*) ; 
 int FUNC1 (struct qed_hwfn*) ; 

__attribute__((used)) static u8 FUNC2(struct qed_hwfn *p_hwfn)
{
	u32 pq_flags = FUNC0(p_hwfn);

	if (!(PQ_FLAGS_MTC & pq_flags))
		return 1;

	return FUNC1(p_hwfn);
}