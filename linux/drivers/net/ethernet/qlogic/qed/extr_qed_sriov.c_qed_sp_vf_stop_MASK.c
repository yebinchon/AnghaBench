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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vf_stop_ramrod_data {int /*<<< orphan*/  vf_id; } ;
struct TYPE_2__ {struct vf_stop_ramrod_data vf_stop; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct qed_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_VF_STOP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  PXP_CONCRETE_FID_VFID ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn,
			  u32 concrete_vfid, u16 opaque_vfid)
{
	struct vf_stop_ramrod_data *p_ramrod = NULL;
	struct qed_spq_entry *p_ent = NULL;
	struct qed_sp_init_data init_data;
	int rc = -EINVAL;

	/* Get SPQ entry */
	FUNC1(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC3(p_hwfn);
	init_data.opaque_fid = opaque_vfid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC2(p_hwfn, &p_ent,
				 COMMON_RAMROD_VF_STOP,
				 PROTOCOLID_COMMON, &init_data);
	if (rc)
		return rc;

	p_ramrod = &p_ent->ramrod.vf_stop;

	p_ramrod->vf_id = FUNC0(concrete_vfid, PXP_CONCRETE_FID_VFID);

	return FUNC4(p_hwfn, p_ent, NULL);
}