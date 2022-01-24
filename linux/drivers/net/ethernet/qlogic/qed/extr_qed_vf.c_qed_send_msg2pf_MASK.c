#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
struct TYPE_12__ {TYPE_5__ tl; } ;
union vfpf_tlvs {TYPE_6__ first_tlv; } ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct TYPE_9__ {TYPE_2__ vf_pf_msg_addr; } ;
struct ustorm_vf_zone {int /*<<< orphan*/  trigger; TYPE_3__ non_trigger; } ;
struct ustorm_trigger_vf_zone {int vf_pf_msg_valid; } ;
struct TYPE_7__ {int /*<<< orphan*/  concrete_fid; } ;
struct qed_hwfn {TYPE_4__* vf_iov_info; TYPE_1__ hw_info; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  vf2pf_request_phys; union vfpf_tlvs* vf2pf_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__,int,...) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PFVF_STATUS_NO_RESOURCE ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  PXP_CONCRETE_FID_PFID ; 
 scalar_t__ PXP_VF_BAR0_START_USDM_ZONE_B ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,uintptr_t,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ustorm_trigger_vf_zone*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,union vfpf_tlvs*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct qed_hwfn *p_hwfn, u8 *done, u32 resp_size)
{
	union vfpf_tlvs *p_req = p_hwfn->vf_iov_info->vf2pf_request;
	struct ustorm_trigger_vf_zone trigger;
	struct ustorm_vf_zone *zone_data;
	int rc = 0, time = 100;

	zone_data = (struct ustorm_vf_zone *)PXP_VF_BAR0_START_USDM_ZONE_B;

	/* output tlvs list */
	FUNC7(p_hwfn, p_req);

	/* need to add the END TLV to the message size */
	resp_size += sizeof(struct channel_list_end_tlv);

	/* Send TLVs over HW channel */
	FUNC5(&trigger, 0, sizeof(struct ustorm_trigger_vf_zone));
	trigger.vf_pf_msg_valid = 1;

	FUNC1(p_hwfn,
		   QED_MSG_IOV,
		   "VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\n",
		   FUNC2(p_hwfn->hw_info.concrete_fid,
			     PXP_CONCRETE_FID_PFID),
		   FUNC8(p_hwfn->vf_iov_info->vf2pf_request_phys),
		   FUNC4(p_hwfn->vf_iov_info->vf2pf_request_phys),
		   &zone_data->non_trigger.vf_pf_msg_addr,
		   *((u32 *)&trigger), &zone_data->trigger);

	FUNC3(p_hwfn,
	       (uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.lo,
	       FUNC4(p_hwfn->vf_iov_info->vf2pf_request_phys));

	FUNC3(p_hwfn,
	       (uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.hi,
	       FUNC8(p_hwfn->vf_iov_info->vf2pf_request_phys));

	/* The message data must be written first, to prevent trigger before
	 * data is written.
	 */
	FUNC9();

	FUNC3(p_hwfn, (uintptr_t)&zone_data->trigger, *((u32 *)&trigger));

	/* When PF would be done with the response, it would write back to the
	 * `done' address. Poll until then.
	 */
	while ((!*done) && time) {
		FUNC6(25);
		time--;
	}

	if (!*done) {
		FUNC0(p_hwfn,
			  "VF <-- PF Timeout [Type %d]\n",
			  p_req->first_tlv.tl.type);
		rc = -EBUSY;
	} else {
		if ((*done != PFVF_STATUS_SUCCESS) &&
		    (*done != PFVF_STATUS_NO_RESOURCE))
			FUNC0(p_hwfn,
				  "PF response: %d [Type %d]\n",
				  *done, p_req->first_tlv.tl.type);
		else
			FUNC1(p_hwfn, QED_MSG_IOV,
				   "PF response: %d [Type %d]\n",
				   *done, p_req->first_tlv.tl.type);
	}

	return rc;
}