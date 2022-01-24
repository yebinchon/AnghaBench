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
struct qed_vf_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ QED_FILTER_MAC ; 
 scalar_t__ QED_FILTER_VLAN ; 
 int FUNC0 (struct qed_hwfn*,struct qed_vf_info*,struct qed_filter_ucast*) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_vf_info*,struct qed_filter_ucast*) ; 

__attribute__((used)) static int
FUNC2(struct qed_hwfn *p_hwfn,
				 struct qed_vf_info *p_vf,
				 struct qed_filter_ucast *p_params)
{
	int rc = 0;

	if (p_params->type == QED_FILTER_MAC) {
		rc = FUNC0(p_hwfn, p_vf, p_params);
		if (rc)
			return rc;
	}

	if (p_params->type == QED_FILTER_VLAN)
		rc = FUNC1(p_hwfn, p_vf, p_params);

	return rc;
}