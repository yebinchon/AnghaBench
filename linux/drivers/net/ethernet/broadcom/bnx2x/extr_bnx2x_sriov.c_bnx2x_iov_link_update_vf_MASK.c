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
struct pf_vf_bulletin_content {int valid_bitmap; int link_flags; int /*<<< orphan*/  link_speed; } ;
struct bnx2x_virtf {scalar_t__ link_cfg; } ;
struct bnx2x_link_report_data {int /*<<< orphan*/  link_report_flags; int /*<<< orphan*/  line_speed; } ;
struct bnx2x {TYPE_1__* vfdb; struct bnx2x_link_report_data last_reported_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  bulletin_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_FD ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_TX_FC_ON ; 
 int BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IFLA_VF_LINK_STATE_AUTO ; 
 scalar_t__ IFLA_VF_LINK_STATE_DISABLE ; 
 scalar_t__ IFLA_VF_LINK_STATE_ENABLE ; 
 int LINK_VALID ; 
 int NETIF_MSG_LINK ; 
 int VFPF_LINK_REPORT_FULL_DUPLEX ; 
 int VFPF_LINK_REPORT_LINK_DOWN ; 
 int VFPF_LINK_REPORT_RX_FC_ON ; 
 int VFPF_LINK_REPORT_TX_FC_ON ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int FUNC4 (struct bnx2x*,int,struct bnx2x_virtf**,struct pf_vf_bulletin_content**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct bnx2x *bp, int idx)
{
	struct bnx2x_link_report_data *state = &bp->last_reported_link;
	struct pf_vf_bulletin_content *bulletin;
	struct bnx2x_virtf *vf;
	bool update = true;
	int rc = 0;

	/* sanity and init */
	rc = FUNC4(bp, idx, &vf, &bulletin, false);
	if (rc)
		return rc;

	FUNC5(&bp->vfdb->bulletin_mutex);

	if (vf->link_cfg == IFLA_VF_LINK_STATE_AUTO) {
		bulletin->valid_bitmap |= 1 << LINK_VALID;

		bulletin->link_speed = state->line_speed;
		bulletin->link_flags = 0;
		if (FUNC7(BNX2X_LINK_REPORT_LINK_DOWN,
			     &state->link_report_flags))
			bulletin->link_flags |= VFPF_LINK_REPORT_LINK_DOWN;
		if (FUNC7(BNX2X_LINK_REPORT_FD,
			     &state->link_report_flags))
			bulletin->link_flags |= VFPF_LINK_REPORT_FULL_DUPLEX;
		if (FUNC7(BNX2X_LINK_REPORT_RX_FC_ON,
			     &state->link_report_flags))
			bulletin->link_flags |= VFPF_LINK_REPORT_RX_FC_ON;
		if (FUNC7(BNX2X_LINK_REPORT_TX_FC_ON,
			     &state->link_report_flags))
			bulletin->link_flags |= VFPF_LINK_REPORT_TX_FC_ON;
	} else if (vf->link_cfg == IFLA_VF_LINK_STATE_DISABLE &&
		   !(bulletin->link_flags & VFPF_LINK_REPORT_LINK_DOWN)) {
		bulletin->valid_bitmap |= 1 << LINK_VALID;
		bulletin->link_flags |= VFPF_LINK_REPORT_LINK_DOWN;
	} else if (vf->link_cfg == IFLA_VF_LINK_STATE_ENABLE &&
		   (bulletin->link_flags & VFPF_LINK_REPORT_LINK_DOWN)) {
		bulletin->valid_bitmap |= 1 << LINK_VALID;
		bulletin->link_speed = FUNC2(bp);
		bulletin->link_flags &= ~VFPF_LINK_REPORT_LINK_DOWN;
	} else {
		update = false;
	}

	if (update) {
		FUNC1(NETIF_MSG_LINK | BNX2X_MSG_IOV,
		   "vf %d mode %u speed %d flags %x\n", idx,
		   vf->link_cfg, bulletin->link_speed, bulletin->link_flags);

		/* Post update on VF's bulletin board */
		rc = FUNC3(bp, idx);
		if (rc) {
			FUNC0("failed to update VF[%d] bulletin\n", idx);
			goto out;
		}
	}

out:
	FUNC6(&bp->vfdb->bulletin_mutex);
	return rc;
}