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
typedef  int u8 ;
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int param; int* p_data_src; int data_src_size; int /*<<< orphan*/  cmd; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
typedef  int /*<<< orphan*/  mb_params ;
struct TYPE_2__ {int /*<<< orphan*/  wol_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_SET_VMAC ; 
 int DRV_MSG_CODE_VMAC_TYPE_MAC ; 
 int DRV_MSG_CODE_VMAC_TYPE_SHIFT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_mcp_mb_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ; 

int FUNC5(struct qed_hwfn *p_hwfn,
			  struct qed_ptt *p_ptt, u8 *mac)
{
	struct qed_mcp_mb_params mb_params;
	u32 mfw_mac[2];
	int rc;

	FUNC3(&mb_params, 0, sizeof(mb_params));
	mb_params.cmd = DRV_MSG_CODE_SET_VMAC;
	mb_params.param = DRV_MSG_CODE_VMAC_TYPE_MAC <<
			  DRV_MSG_CODE_VMAC_TYPE_SHIFT;
	mb_params.param |= FUNC1(p_hwfn);

	/* MCP is BE, and on LE platforms PCI would swap access to SHMEM
	 * in 32-bit granularity.
	 * So the MAC has to be set in native order [and not byte order],
	 * otherwise it would be read incorrectly by MFW after swap.
	 */
	mfw_mac[0] = mac[0] << 24 | mac[1] << 16 | mac[2] << 8 | mac[3];
	mfw_mac[1] = mac[4] << 24 | mac[5] << 16;

	mb_params.p_data_src = (u8 *)mfw_mac;
	mb_params.data_src_size = 8;
	rc = FUNC4(p_hwfn, p_ptt, &mb_params);
	if (rc)
		FUNC0(p_hwfn, "Failed to send mac address, rc = %d\n", rc);

	/* Store primary MAC for later possible WoL */
	FUNC2(p_hwfn->cdev->wol_mac, mac, ETH_ALEN);

	return rc;
}