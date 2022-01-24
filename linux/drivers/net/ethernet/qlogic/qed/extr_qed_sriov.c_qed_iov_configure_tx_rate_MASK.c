#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_vf_info {int /*<<< orphan*/  vport_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_link_state {int /*<<< orphan*/  speed; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
struct TYPE_4__ {TYPE_1__* mcp_info; } ;
struct TYPE_3__ {struct qed_mcp_link_state link_output; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qed_vf_info* FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *p_hwfn,
				     struct qed_ptt *p_ptt, int vfid, int val)
{
	struct qed_mcp_link_state *p_link;
	struct qed_vf_info *vf;
	u8 abs_vp_id = 0;
	int rc;

	vf = FUNC3(p_hwfn, (u16)vfid, true);
	if (!vf)
		return -EINVAL;

	rc = FUNC1(p_hwfn, vf->vport_id, &abs_vp_id);
	if (rc)
		return rc;

	p_link = &FUNC0(p_hwfn->cdev)->mcp_info->link_output;

	return FUNC2(p_hwfn, p_ptt, abs_vp_id, (u32)val,
				 p_link->speed);
}