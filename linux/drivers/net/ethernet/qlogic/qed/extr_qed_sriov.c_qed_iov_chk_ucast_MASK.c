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
struct qed_public_vf_info {int /*<<< orphan*/  mac; scalar_t__ is_trusted_configured; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ type; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ QED_FILTER_MAC ; 
 scalar_t__ QED_FILTER_MAC_VLAN ; 
 int /*<<< orphan*/  QED_IOV_WQ_BULLETIN_UPDATE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 struct qed_public_vf_info* FUNC2 (struct qed_hwfn*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *hwfn,
			     int vfid, struct qed_filter_ucast *params)
{
	struct qed_public_vf_info *vf;

	vf = FUNC2(hwfn, vfid, true);
	if (!vf)
		return -EINVAL;

	/* No real decision to make; Store the configured MAC */
	if (params->type == QED_FILTER_MAC ||
	    params->type == QED_FILTER_MAC_VLAN) {
		FUNC0(vf->mac, params->mac);

		if (vf->is_trusted_configured) {
			FUNC1(hwfn, vf->mac, vfid);

			/* Update and post bulleitin again */
			FUNC3(hwfn, QED_IOV_WQ_BULLETIN_UPDATE_FLAG);
		}
	}

	return 0;
}