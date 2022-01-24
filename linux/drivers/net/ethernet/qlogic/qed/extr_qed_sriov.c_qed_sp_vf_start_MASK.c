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
typedef  scalar_t__ u8 ;
struct TYPE_10__ {scalar_t__* minor_ver_arr; int /*<<< orphan*/ * major_ver_arr; } ;
struct vf_start_ramrod_data {TYPE_5__ hsi_fp_ver; int /*<<< orphan*/  personality; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  vf_id; } ;
struct TYPE_8__ {scalar_t__ eth_fp_hsi_minor; } ;
struct TYPE_9__ {TYPE_3__ vfdev_info; } ;
struct qed_vf_info {int /*<<< orphan*/  abs_vf_id; TYPE_4__ acquire; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  concrete_fid; } ;
struct TYPE_6__ {struct vf_start_ramrod_data vf_start; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct TYPE_7__ {int personality; } ;
struct qed_hwfn {TYPE_2__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_VF_START ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_HSI_VER_MAJOR ; 
 scalar_t__ ETH_HSI_VER_MINOR ; 
 scalar_t__ ETH_HSI_VER_NO_PKT_LEN_TUNN ; 
 size_t ETH_VER_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERSONALITY_ETH ; 
 int /*<<< orphan*/  PERSONALITY_RDMA_AND_ETH ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  PXP_CONCRETE_FID_VFID ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
#define  QED_PCI_ETH 129 
#define  QED_PCI_ETH_ROCE 128 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_spq_entry*) ; 
 int FUNC6 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct qed_hwfn *p_hwfn, struct qed_vf_info *p_vf)
{
	struct vf_start_ramrod_data *p_ramrod = NULL;
	struct qed_spq_entry *p_ent = NULL;
	struct qed_sp_init_data init_data;
	int rc = -EINVAL;
	u8 fp_minor;

	/* Get SPQ entry */
	FUNC4(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC7(p_hwfn);
	init_data.opaque_fid = p_vf->opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC6(p_hwfn, &p_ent,
				 COMMON_RAMROD_VF_START,
				 PROTOCOLID_COMMON, &init_data);
	if (rc)
		return rc;

	p_ramrod = &p_ent->ramrod.vf_start;

	p_ramrod->vf_id = FUNC2(p_vf->concrete_fid, PXP_CONCRETE_FID_VFID);
	p_ramrod->opaque_fid = FUNC3(p_vf->opaque_fid);

	switch (p_hwfn->hw_info.personality) {
	case QED_PCI_ETH:
		p_ramrod->personality = PERSONALITY_ETH;
		break;
	case QED_PCI_ETH_ROCE:
		p_ramrod->personality = PERSONALITY_RDMA_AND_ETH;
		break;
	default:
		FUNC0(p_hwfn, "Unknown VF personality %d\n",
			  p_hwfn->hw_info.personality);
		FUNC5(p_hwfn, p_ent);
		return -EINVAL;
	}

	fp_minor = p_vf->acquire.vfdev_info.eth_fp_hsi_minor;
	if (fp_minor > ETH_HSI_VER_MINOR &&
	    fp_minor != ETH_HSI_VER_NO_PKT_LEN_TUNN) {
		FUNC1(p_hwfn,
			   QED_MSG_IOV,
			   "VF [%d] - Requested fp hsi %02x.%02x which is slightly newer than PF's %02x.%02x; Configuring PFs version\n",
			   p_vf->abs_vf_id,
			   ETH_HSI_VER_MAJOR,
			   fp_minor, ETH_HSI_VER_MAJOR, ETH_HSI_VER_MINOR);
		fp_minor = ETH_HSI_VER_MINOR;
	}

	p_ramrod->hsi_fp_ver.major_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MAJOR;
	p_ramrod->hsi_fp_ver.minor_ver_arr[ETH_VER_KEY] = fp_minor;

	FUNC1(p_hwfn, QED_MSG_IOV,
		   "VF[%d] - Starting using HSI %02x.%02x\n",
		   p_vf->abs_vf_id, ETH_HSI_VER_MAJOR, fp_minor);

	return FUNC8(p_hwfn, p_ent, NULL);
}