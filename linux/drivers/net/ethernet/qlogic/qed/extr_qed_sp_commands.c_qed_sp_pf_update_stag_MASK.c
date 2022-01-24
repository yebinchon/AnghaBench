#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {int update_mf_vlan_flag; int /*<<< orphan*/  mf_vlan; } ;
struct TYPE_9__ {TYPE_3__ pf_update; } ;
struct qed_spq_entry {TYPE_4__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct TYPE_10__ {scalar_t__ tc; } ;
struct TYPE_6__ {int ovlan; int /*<<< orphan*/  opaque_fid; } ;
struct qed_hwfn {TYPE_5__ ufp_info; TYPE_2__* cdev; TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
struct TYPE_7__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_PF_UPDATE ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  QED_MF_UFP_SPECIFIC ; 
 int /*<<< orphan*/  QED_SPQ_MODE_CB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct qed_hwfn *p_hwfn)
{
	struct qed_spq_entry *p_ent = NULL;
	struct qed_sp_init_data init_data;
	int rc;

	/* Get SPQ entry */
	FUNC1(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC3(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_CB;

	rc = FUNC2(p_hwfn, &p_ent,
				 COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
				 &init_data);
	if (rc)
		return rc;

	p_ent->ramrod.pf_update.update_mf_vlan_flag = true;
	p_ent->ramrod.pf_update.mf_vlan = FUNC0(p_hwfn->hw_info.ovlan);
	if (FUNC5(QED_MF_UFP_SPECIFIC, &p_hwfn->cdev->mf_bits))
		p_ent->ramrod.pf_update.mf_vlan |=
			FUNC0(((u16)p_hwfn->ufp_info.tc << 13));

	return FUNC4(p_hwfn, p_ent, NULL);
}