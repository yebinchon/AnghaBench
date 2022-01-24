#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_16__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vfpf_port_phys_id_resp_tlv {struct pfvf_acquire_resp_tlv* id; } ;
struct vfpf_fp_hsi_resp_tlv {int /*<<< orphan*/  is_supported; } ;
struct TYPE_33__ {scalar_t__ length; } ;
struct TYPE_24__ {TYPE_9__ tl; } ;
struct TYPE_21__ {void* num_mc_filters; void* num_vlan_filters; void* num_mac_filters; void* num_sbs; void* num_rxqs; void* num_txqs; } ;
struct TYPE_32__ {int /*<<< orphan*/  caps; scalar_t__ fp_hsi_ver; scalar_t__ vf_os; int /*<<< orphan*/  vf_id; } ;
struct vfpf_acquire_tlv {TYPE_16__ first_tlv; TYPE_13__ resc_request; TYPE_8__ vfdev_info; int /*<<< orphan*/  bulletin_addr; } ;
struct TYPE_18__ {int /*<<< orphan*/  status; } ;
struct pfvf_acquire_resp_tlv {TYPE_10__ hdr; } ;
struct channel_tlv {int dummy; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_20__ {struct pfvf_acquire_resp_tlv* current_mac_addr; void* num_vlan_filters; TYPE_3__* hw_sbs; void* num_sbs; void* num_mc_filters; void* num_mac_filters; void* num_rxqs; void* num_txqs; } ;
struct TYPE_28__ {int chip_num; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  db_size; } ;
struct TYPE_19__ {scalar_t__ status; } ;
struct TYPE_23__ {TYPE_12__ resc; TYPE_4__ pfdev_info; TYPE_11__ hdr; } ;
struct TYPE_26__ {int chip_id; scalar_t__ flash_size; int /*<<< orphan*/  chip_port_mode; int /*<<< orphan*/  int_block; } ;
struct TYPE_25__ {int chip_id; } ;
struct bnx2x {int flags; int igu_dsb_id; TYPE_15__ acquire_resp; TYPE_5__* dev; int /*<<< orphan*/  fw_ver; void* vlan_credit; int /*<<< orphan*/  igu_base_sb; void* igu_sb_cnt; TYPE_2__ common; scalar_t__ mf_mode; scalar_t__ mf_ov; int /*<<< orphan*/  db_size; TYPE_1__ link_params; TYPE_15__* phys_port_id; TYPE_7__* vf2pf_mbox; int /*<<< orphan*/  vf2pf_mbox_mapping; int /*<<< orphan*/  pf2vf_bulletin_mapping; } ;
struct TYPE_22__ {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct TYPE_30__ {struct vfpf_acquire_tlv acquire; } ;
struct TYPE_31__ {TYPE_14__ resp; TYPE_6__ req; } ;
struct TYPE_29__ {TYPE_15__* dev_addr; } ;
struct TYPE_27__ {int /*<<< orphan*/  hw_sb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  CHANNEL_TLV_ACQUIRE ; 
 int /*<<< orphan*/  CHANNEL_TLV_FP_HSI_SUPPORT ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_PHYS_PORT_ID ; 
 int /*<<< orphan*/  CHIP_2_PORT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_FP_HSI_VERSION ; 
 scalar_t__ ETH_FP_HSI_VER_2 ; 
 int HAS_PHYS_PORT_ID ; 
 int /*<<< orphan*/  INT_BLOCK_IGU ; 
 int NO_FCOE_FLAG ; 
 int NO_ISCSI_FLAG ; 
 int NO_ISCSI_OOO_FLAG ; 
 int NO_WOL_FLAG ; 
 scalar_t__ PFVF_STATUS_NO_RESOURCE ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 void* VF_ACQUIRE_MAC_FILTERS ; 
 void* VF_ACQUIRE_MC_FILTERS ; 
 int VF_ACQUIRE_THRESH ; 
 void* VF_ACQUIRE_VLAN_FILTERS ; 
 int /*<<< orphan*/  VF_CAP_SUPPORT_EXT_BULLETIN ; 
 int /*<<< orphan*/  VF_CAP_SUPPORT_VLAN_FILTER ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct vfpf_acquire_tlv*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct vfpf_acquire_tlv*) ; 
 scalar_t__ FUNC4 (struct bnx2x*,int /*<<< orphan*/ *) ; 
 struct vfpf_fp_hsi_resp_tlv* FUNC5 (struct bnx2x*,struct pfvf_acquire_resp_tlv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,TYPE_16__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (struct pfvf_acquire_resp_tlv*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_15__*,struct pfvf_acquire_resp_tlv*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_14__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (void*,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC15(struct bnx2x *bp, u8 tx_count, u8 rx_count)
{
	int rc = 0, attempts = 0;
	struct vfpf_acquire_tlv *req = &bp->vf2pf_mbox->req.acquire;
	struct pfvf_acquire_resp_tlv *resp = &bp->vf2pf_mbox->resp.acquire_resp;
	struct vfpf_port_phys_id_resp_tlv *phys_port_resp;
	struct vfpf_fp_hsi_resp_tlv *fp_hsi_resp;
	u32 vf_id;
	bool resources_acquired = false;

	/* clear mailbox and prep first tlv */
	FUNC8(bp, &req->first_tlv, CHANNEL_TLV_ACQUIRE, sizeof(*req));

	if (FUNC4(bp, &vf_id)) {
		rc = -EAGAIN;
		goto out;
	}

	req->vfdev_info.vf_id = vf_id;
	req->vfdev_info.vf_os = 0;
	req->vfdev_info.fp_hsi_ver = ETH_FP_HSI_VERSION;

	req->resc_request.num_rxqs = rx_count;
	req->resc_request.num_txqs = tx_count;
	req->resc_request.num_sbs = bp->igu_sb_cnt;
	req->resc_request.num_mac_filters = VF_ACQUIRE_MAC_FILTERS;
	req->resc_request.num_mc_filters = VF_ACQUIRE_MC_FILTERS;
	req->resc_request.num_vlan_filters = VF_ACQUIRE_VLAN_FILTERS;

	/* pf 2 vf bulletin board address */
	req->bulletin_addr = bp->pf2vf_bulletin_mapping;

	/* Request physical port identifier */
	FUNC2(bp, req, req->first_tlv.tl.length,
		      CHANNEL_TLV_PHYS_PORT_ID, sizeof(struct channel_tlv));

	/* Bulletin support for bulletin board with length > legacy length */
	req->vfdev_info.caps |= VF_CAP_SUPPORT_EXT_BULLETIN;
	/* vlan filtering is supported */
	req->vfdev_info.caps |= VF_CAP_SUPPORT_VLAN_FILTER;

	/* add list termination tlv */
	FUNC2(bp, req,
		      req->first_tlv.tl.length + sizeof(struct channel_tlv),
		      CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	/* output tlvs list */
	FUNC3(bp, req);

	while (!resources_acquired) {
		FUNC1(BNX2X_MSG_SP, "attempting to acquire resources\n");

		/* send acquire request */
		rc = FUNC6(bp,
				       &resp->hdr.status,
				       bp->vf2pf_mbox_mapping);

		/* PF timeout */
		if (rc)
			goto out;

		/* copy acquire response from buffer to bp */
		FUNC11(&bp->acquire_resp, resp, sizeof(bp->acquire_resp));

		attempts++;

		/* test whether the PF accepted our request. If not, humble
		 * the request and try again.
		 */
		if (bp->acquire_resp.hdr.status == PFVF_STATUS_SUCCESS) {
			FUNC1(BNX2X_MSG_SP, "resources acquired\n");
			resources_acquired = true;
		} else if (bp->acquire_resp.hdr.status ==
			   PFVF_STATUS_NO_RESOURCE &&
			   attempts < VF_ACQUIRE_THRESH) {
			FUNC1(BNX2X_MSG_SP,
			   "PF unwilling to fulfill resource request. Try PF recommended amount\n");

			/* humble our request */
			req->resc_request.num_txqs =
				FUNC13(req->resc_request.num_txqs,
				    bp->acquire_resp.resc.num_txqs);
			req->resc_request.num_rxqs =
				FUNC13(req->resc_request.num_rxqs,
				    bp->acquire_resp.resc.num_rxqs);
			req->resc_request.num_sbs =
				FUNC13(req->resc_request.num_sbs,
				    bp->acquire_resp.resc.num_sbs);
			req->resc_request.num_mac_filters =
				FUNC13(req->resc_request.num_mac_filters,
				    bp->acquire_resp.resc.num_mac_filters);
			req->resc_request.num_vlan_filters =
				FUNC13(req->resc_request.num_vlan_filters,
				    bp->acquire_resp.resc.num_vlan_filters);
			req->resc_request.num_mc_filters =
				FUNC13(req->resc_request.num_mc_filters,
				    bp->acquire_resp.resc.num_mc_filters);

			/* Clear response buffer */
			FUNC12(&bp->vf2pf_mbox->resp, 0,
			       sizeof(union pfvf_tlvs));
		} else {
			/* Determine reason of PF failure of acquire process */
			fp_hsi_resp = FUNC5(bp, resp,
							    CHANNEL_TLV_FP_HSI_SUPPORT);
			if (fp_hsi_resp && !fp_hsi_resp->is_supported)
				FUNC0("Old hypervisor - doesn't support current fastpath HSI version; Need to downgrade VF driver [or upgrade hypervisor]\n");
			else
				FUNC0("Failed to get the requested amount of resources: %d. Breaking...\n",
					  bp->acquire_resp.hdr.status);
			rc = -EAGAIN;
			goto out;
		}
	}

	/* Retrieve physical port id (if possible) */
	phys_port_resp = (struct vfpf_port_phys_id_resp_tlv *)
			 FUNC5(bp, resp,
					       CHANNEL_TLV_PHYS_PORT_ID);
	if (phys_port_resp) {
		FUNC11(bp->phys_port_id, phys_port_resp->id, ETH_ALEN);
		bp->flags |= HAS_PHYS_PORT_ID;
	}

	/* Old Hypevisors might not even support the FP_HSI_SUPPORT TLV.
	 * If that's the case, we need to make certain required FW was
	 * supported by such a hypervisor [i.e., v0-v2].
	 */
	fp_hsi_resp = FUNC5(bp, resp,
					    CHANNEL_TLV_FP_HSI_SUPPORT);
	if (!fp_hsi_resp && (ETH_FP_HSI_VERSION > ETH_FP_HSI_VER_2)) {
		FUNC0("Old hypervisor - need to downgrade VF's driver\n");

		/* Since acquire succeeded on the PF side, we need to send a
		 * release message in order to allow future probes.
		 */
		FUNC7(bp, &req->first_tlv);
		FUNC9(bp);

		rc = -EINVAL;
		goto out;
	}

	/* get HW info */
	bp->common.chip_id |= (bp->acquire_resp.pfdev_info.chip_num & 0xffff);
	bp->link_params.chip_id = bp->common.chip_id;
	bp->db_size = bp->acquire_resp.pfdev_info.db_size;
	bp->common.int_block = INT_BLOCK_IGU;
	bp->common.chip_port_mode = CHIP_2_PORT_MODE;
	bp->igu_dsb_id = -1;
	bp->mf_ov = 0;
	bp->mf_mode = 0;
	bp->common.flash_size = 0;
	bp->flags |=
		NO_WOL_FLAG | NO_ISCSI_OOO_FLAG | NO_ISCSI_FLAG | NO_FCOE_FLAG;
	bp->igu_sb_cnt = bp->acquire_resp.resc.num_sbs;
	bp->igu_base_sb = bp->acquire_resp.resc.hw_sbs[0].hw_sb_id;
	bp->vlan_credit = bp->acquire_resp.resc.num_vlan_filters;

	FUNC14(bp->fw_ver, bp->acquire_resp.pfdev_info.fw_ver,
		sizeof(bp->fw_ver));

	if (FUNC10(bp->acquire_resp.resc.current_mac_addr))
		FUNC11(bp->dev->dev_addr,
		       bp->acquire_resp.resc.current_mac_addr,
		       ETH_ALEN);

out:
	FUNC7(bp, &req->first_tlv);
	return rc;
}