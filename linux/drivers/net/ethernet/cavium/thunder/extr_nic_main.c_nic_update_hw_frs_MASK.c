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
typedef  int u64 ;
struct nicpf {int /*<<< orphan*/  pdev; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 int MAX_LMAC_PER_BGX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NIC_HW_MAX_FRS ; 
 int NIC_HW_MIN_FRS ; 
 scalar_t__ NIC_PF_LMAC_0_7_CFG2 ; 
 scalar_t__ NIC_PF_LMAC_0_7_CREDIT ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nicpf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nicpf *nic, int new_frs, int vf)
{
	int bgx, lmac, lmac_cnt;
	u64 lmac_credits;

	if ((new_frs > NIC_HW_MAX_FRS) || (new_frs < NIC_HW_MIN_FRS))
		return 1;

	bgx = FUNC0(nic->vf_lmac_map[vf]);
	lmac = FUNC1(nic->vf_lmac_map[vf]);
	lmac += bgx * MAX_LMAC_PER_BGX;

	new_frs += VLAN_ETH_HLEN + ETH_FCS_LEN + 4;

	/* Update corresponding LMAC credits */
	lmac_cnt = FUNC2(nic->node, bgx);
	lmac_credits = FUNC3(nic, NIC_PF_LMAC_0_7_CREDIT + (lmac * 8));
	lmac_credits &= ~(0xFFFFFULL << 12);
	lmac_credits |= (((((48 * 1024) / lmac_cnt) - new_frs) / 16) << 12);
	FUNC4(nic, NIC_PF_LMAC_0_7_CREDIT + (lmac * 8), lmac_credits);

	/* Enforce MTU in HW
	 * This config is supported only from 88xx pass 2.0 onwards.
	 */
	if (!FUNC5(nic->pdev))
		FUNC4(nic,
			      NIC_PF_LMAC_0_7_CFG2 + (lmac * 8), new_frs);
	return 0;
}