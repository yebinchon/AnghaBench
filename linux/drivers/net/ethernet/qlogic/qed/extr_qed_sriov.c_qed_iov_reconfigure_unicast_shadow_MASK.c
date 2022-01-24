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
typedef  int u64 ;
struct qed_vf_info {int configured_features; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int VLAN_ADDR_FORCED ; 
 int FUNC1 (struct qed_hwfn*,struct qed_vf_info*) ; 

__attribute__((used)) static int
FUNC2(struct qed_hwfn *p_hwfn,
				   struct qed_vf_info *p_vf, u64 events)
{
	int rc = 0;

	if ((events & FUNC0(VLAN_ADDR_FORCED)) &&
	    !(p_vf->configured_features & (1 << VLAN_ADDR_FORCED)))
		rc = FUNC1(p_hwfn, p_vf);

	return rc;
}