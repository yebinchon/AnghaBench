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
struct vfpf_set_q_filters_tlv {scalar_t__ vf_qid; } ;
struct pf_vf_bulletin_content {int valid_bitmap; } ;
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; int /*<<< orphan*/  index; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct pf_vf_bulletin_content* FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int /*<<< orphan*/  VFPF_Q_FILTER_VLAN_TAG_VALID ; 
 int VLAN_VALID ; 
 scalar_t__ FUNC2 (struct vfpf_set_q_filters_tlv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bnx2x_virtf*) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp,
				       struct bnx2x_virtf *vf,
				       struct vfpf_set_q_filters_tlv *filters)
{
	struct pf_vf_bulletin_content *bulletin = FUNC1(bp, vf->index);
	int rc = 0;

	/* if vlan was set by hypervisor we don't allow guest to config vlan */
	if (bulletin->valid_bitmap & 1 << VLAN_VALID) {
		/* search for vlan filters */

		if (FUNC2(filters,
					     VFPF_Q_FILTER_VLAN_TAG_VALID)) {
			FUNC0("VF[%d] attempted to configure vlan but one was already set by Hypervisor. Aborting request\n",
				  vf->abs_vfid);
			rc = -EPERM;
			goto response;
		}
	}

	/* verify vf_qid */
	if (filters->vf_qid > FUNC3(vf)) {
		rc = -EPERM;
		goto response;
	}

response:
	return rc;
}