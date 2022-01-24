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
typedef  int u32 ;
typedef  int u16 ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int PQ_FLAGS_RLS ; 
 int PQ_FLAGS_VFS ; 
 int FUNC0 (struct qed_hwfn*) ; 
 int FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*) ; 

__attribute__((used)) static u16 FUNC3(struct qed_hwfn *p_hwfn)
{
	u32 pq_flags = FUNC0(p_hwfn);

	/* all pqs share the same vport, except for vfs and pf_rl pqs */
	return (!!(PQ_FLAGS_RLS & pq_flags)) *
	       FUNC1(p_hwfn) +
	       (!!(PQ_FLAGS_VFS & pq_flags)) *
	       FUNC2(p_hwfn) + 1;
}