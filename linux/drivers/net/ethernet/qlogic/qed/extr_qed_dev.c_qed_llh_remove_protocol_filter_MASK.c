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
struct TYPE_2__ {int type; void* dest_port; void* source_port_or_eth_type; } ;
union qed_llh_filter {TYPE_1__ protocol; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int /*<<< orphan*/  mf_bits; } ;
typedef  int /*<<< orphan*/  str ;
typedef  enum qed_llh_prot_filter_type_t { ____Placeholder_qed_llh_prot_filter_type_t } qed_llh_prot_filter_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qed_hwfn* FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_MF_LLH_PROTO_CLSS ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int FUNC3 (struct qed_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qed_dev*,int,void*,void*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qed_dev*,int /*<<< orphan*/ ,union qed_llh_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qed_ptt* FUNC7 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct qed_dev *cdev,
				    u8 ppfid,
				    enum qed_llh_prot_filter_type_t type,
				    u16 source_port_or_eth_type, u16 dest_port)
{
	struct qed_hwfn *p_hwfn = FUNC2(cdev);
	struct qed_ptt *p_ptt = FUNC7(p_hwfn);
	u8 filter_idx, abs_ppfid, str[32];
	union qed_llh_filter filter = {};
	int rc = 0;
	u32 ref_cnt;

	if (!p_ptt)
		return;

	if (!FUNC9(QED_MF_LLH_PROTO_CLSS, &cdev->mf_bits))
		goto out;

	rc = FUNC4(cdev, type,
					       source_port_or_eth_type,
					       dest_port, str, sizeof(str));
	if (rc)
		goto err;

	filter.protocol.type = type;
	filter.protocol.source_port_or_eth_type = source_port_or_eth_type;
	filter.protocol.dest_port = dest_port;
	rc = FUNC6(cdev, ppfid, &filter, &filter_idx,
					  &ref_cnt);
	if (rc)
		goto err;

	rc = FUNC3(cdev, ppfid, &abs_ppfid);
	if (rc)
		goto err;

	/* Remove from the LLH in case the filter is not in use */
	if (!ref_cnt) {
		rc = FUNC5(p_hwfn, p_ptt, abs_ppfid,
					   filter_idx);
		if (rc)
			goto err;
	}

	FUNC1(cdev,
		   QED_MSG_SP,
		   "LLH: Removed protocol filter [%s] from ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\n",
		   str, ppfid, abs_ppfid, filter_idx, ref_cnt);

	goto out;

err:	FUNC0(cdev,
		  "LLH: Failed to remove protocol filter [%s] from ppfid %hhd\n",
		  str, ppfid);
out:
	FUNC8(p_hwfn, p_ptt);
}