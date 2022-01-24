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
struct qed_spq_entry {int dummy; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct TYPE_2__ {int /*<<< orphan*/  opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_EMPTY ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 

int FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_spq_entry *p_ent = NULL;
	struct qed_sp_init_data init_data;
	int rc;

	/* Get SPQ entry */
	FUNC0(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC2(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC1(p_hwfn, &p_ent,
				 COMMON_RAMROD_EMPTY, PROTOCOLID_COMMON,
				 &init_data);
	if (rc)
		return rc;

	return FUNC3(p_hwfn, p_ent, NULL);
}