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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct vport_stop_ramrod_data {int /*<<< orphan*/  vport_id; } ;
struct TYPE_2__ {struct vport_stop_ramrod_data vport_stop; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RAMROD_VPORT_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTOCOLID_ETH ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 
 int FUNC5 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct qed_hwfn*) ; 

int FUNC7(struct qed_hwfn *p_hwfn, u16 opaque_fid, u8 vport_id)
{
	struct vport_stop_ramrod_data *p_ramrod;
	struct qed_sp_init_data init_data;
	struct qed_spq_entry *p_ent;
	u8 abs_vport_id = 0;
	int rc;

	if (FUNC0(p_hwfn->cdev))
		return FUNC6(p_hwfn);

	rc = FUNC2(p_hwfn, vport_id, &abs_vport_id);
	if (rc)
		return rc;

	FUNC1(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC4(p_hwfn);
	init_data.opaque_fid = opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC3(p_hwfn, &p_ent,
				 ETH_RAMROD_VPORT_STOP,
				 PROTOCOLID_ETH, &init_data);
	if (rc)
		return rc;

	p_ramrod = &p_ent->ramrod.vport_stop;
	p_ramrod->vport_id = abs_vport_id;

	return FUNC5(p_hwfn, p_ent, NULL);
}