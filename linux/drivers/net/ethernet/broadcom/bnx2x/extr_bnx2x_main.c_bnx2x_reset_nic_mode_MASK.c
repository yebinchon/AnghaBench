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
struct bnx2x {scalar_t__ mf_mode; int /*<<< orphan*/  link_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 scalar_t__ NIG_REG_LLH0_FUNC_EN ; 
 scalar_t__ NIG_REG_LLH0_FUNC_MEM_ENABLE ; 
 scalar_t__ NIG_REG_LLH1_FUNC_EN ; 
 scalar_t__ NIG_REG_LLH1_FUNC_MEM_ENABLE ; 
 scalar_t__ NIG_REG_P0_TX_MNG_HOST_ENABLE ; 
 scalar_t__ NIG_REG_P1_TX_MNG_HOST_ENABLE ; 
 int NUM_MACS ; 
 scalar_t__ PRS_REG_NIC_MODE ; 
 int FUNC3 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ SINGLE_FUNCTION ; 
 int FUNC5 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct bnx2x *bp)
{
	int rc, i, port = FUNC1(bp);
	int vlan_en = 0, mac_en[NUM_MACS];

	/* Close input from network */
	if (bp->mf_mode == SINGLE_FUNCTION) {
		FUNC6(&bp->link_params, 0);
	} else {
		vlan_en = FUNC3(bp, port ? NIG_REG_LLH1_FUNC_EN :
				   NIG_REG_LLH0_FUNC_EN);
		FUNC4(bp, port ? NIG_REG_LLH1_FUNC_EN :
			  NIG_REG_LLH0_FUNC_EN, 0);
		for (i = 0; i < NUM_MACS; i++) {
			mac_en[i] = FUNC3(bp, port ?
					     (NIG_REG_LLH1_FUNC_MEM_ENABLE +
					      4 * i) :
					     (NIG_REG_LLH0_FUNC_MEM_ENABLE +
					      4 * i));
			FUNC4(bp, port ? (NIG_REG_LLH1_FUNC_MEM_ENABLE +
					      4 * i) :
				  (NIG_REG_LLH0_FUNC_MEM_ENABLE + 4 * i), 0);
		}
	}

	/* Close BMC to host */
	FUNC4(bp, port ? NIG_REG_P0_TX_MNG_HOST_ENABLE :
	       NIG_REG_P1_TX_MNG_HOST_ENABLE, 0);

	/* Suspend Tx switching to the PF. Completion of this ramrod
	 * further guarantees that all the packets of that PF / child
	 * VFs in BRB were processed by the Parser, so it is safe to
	 * change the NIC_MODE register.
	 */
	rc = FUNC5(bp, 1);
	if (rc) {
		FUNC0("Can't suspend tx-switching!\n");
		return rc;
	}

	/* Change NIC_MODE register */
	FUNC4(bp, PRS_REG_NIC_MODE, 0);

	/* Open input from network */
	if (bp->mf_mode == SINGLE_FUNCTION) {
		FUNC6(&bp->link_params, 1);
	} else {
		FUNC4(bp, port ? NIG_REG_LLH1_FUNC_EN :
			  NIG_REG_LLH0_FUNC_EN, vlan_en);
		for (i = 0; i < NUM_MACS; i++) {
			FUNC4(bp, port ? (NIG_REG_LLH1_FUNC_MEM_ENABLE +
					      4 * i) :
				  (NIG_REG_LLH0_FUNC_MEM_ENABLE + 4 * i),
				  mac_en[i]);
		}
	}

	/* Enable BMC to host */
	FUNC4(bp, port ? NIG_REG_P0_TX_MNG_HOST_ENABLE :
	       NIG_REG_P1_TX_MNG_HOST_ENABLE, 1);

	/* Resume Tx switching to the PF */
	rc = FUNC5(bp, 0);
	if (rc) {
		FUNC0("Can't resume tx-switching!\n");
		return rc;
	}

	FUNC2(NETIF_MSG_IFUP, "NIC MODE disabled\n");
	return 0;
}