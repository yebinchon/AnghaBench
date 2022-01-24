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
typedef  int u32 ;
struct bnx2x_mac_vals {int /*<<< orphan*/ * bmac_val; scalar_t__ bmac_addr; int /*<<< orphan*/  emac_val; scalar_t__ emac_addr; int /*<<< orphan*/ * umac_val; scalar_t__* umac_addr; int /*<<< orphan*/  xmac_val; scalar_t__ xmac_addr; } ;
struct TYPE_2__ {int port; } ;
struct bnx2x {TYPE_1__ link_params; } ;
typedef  int /*<<< orphan*/  mac_vals ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BRB1_REG_NUM_OF_FULL_BLOCKS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 scalar_t__ DORQ_REG_NORM_CID_OFST ; 
 int MISC_REGISTERS_RESET_REG_1_RST_BRB1 ; 
 int /*<<< orphan*/  MISC_REG_RESET_REG_1 ; 
 int /*<<< orphan*/  NIG_REG_NIG_INT_STS_CLR_0 ; 
 scalar_t__ PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 int FUNC7 (struct bnx2x*,int) ; 
 int FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct bnx2x_mac_vals*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x_mac_vals*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct bnx2x *bp)
{
	u32 reset_reg, tmp_reg = 0, rc;
	bool prev_undi = false;
	struct bnx2x_mac_vals mac_vals;

	/* It is possible a previous function received 'common' answer,
	 * but hasn't loaded yet, therefore creating a scenario of
	 * multiple functions receiving 'common' on the same path.
	 */
	FUNC0("Common unload Flow\n");

	FUNC13(&mac_vals, 0, sizeof(mac_vals));

	if (FUNC6(bp))
		return FUNC8(bp);

	reset_reg = FUNC3(bp, MISC_REG_RESET_REG_1);

	/* Reset should be performed after BRB is emptied */
	if (reset_reg & MISC_REGISTERS_RESET_REG_1_RST_BRB1) {
		u32 timer_count = 1000;

		/* Close the MAC Rx to prevent BRB from filling up */
		FUNC9(bp, &mac_vals);

		/* close LLH filters for both ports towards the BRB */
		FUNC12(&bp->link_params, 0);
		bp->link_params.port ^= 1;
		FUNC12(&bp->link_params, 0);
		bp->link_params.port ^= 1;

		/* Check if the UNDI driver was previously loaded */
		if (FUNC5(bp)) {
			prev_undi = true;
			/* clear the UNDI indication */
			FUNC4(bp, DORQ_REG_NORM_CID_OFST, 0);
			/* clear possible idle check errors */
			FUNC3(bp, NIG_REG_NIG_INT_STS_CLR_0);
		}
		if (!FUNC2(bp))
			/* block FW from writing to host */
			FUNC4(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 0);

		/* wait until BRB is empty */
		tmp_reg = FUNC3(bp, BRB1_REG_NUM_OF_FULL_BLOCKS);
		while (timer_count) {
			u32 prev_brb = tmp_reg;

			tmp_reg = FUNC3(bp, BRB1_REG_NUM_OF_FULL_BLOCKS);
			if (!tmp_reg)
				break;

			FUNC0("BRB still has 0x%08x\n", tmp_reg);

			/* reset timer as long as BRB actually gets emptied */
			if (prev_brb > tmp_reg)
				timer_count = 1000;
			else
				timer_count--;

			/* If UNDI resides in memory, manually increment it */
			if (prev_undi)
				FUNC10(bp, 1);

			FUNC14(10);
		}

		if (!timer_count)
			FUNC1("Failed to empty BRB, hope for the best\n");
	}

	/* No packets are in the pipeline, path is ready for reset */
	FUNC11(bp);

	if (mac_vals.xmac_addr)
		FUNC4(bp, mac_vals.xmac_addr, mac_vals.xmac_val);
	if (mac_vals.umac_addr[0])
		FUNC4(bp, mac_vals.umac_addr[0], mac_vals.umac_val[0]);
	if (mac_vals.umac_addr[1])
		FUNC4(bp, mac_vals.umac_addr[1], mac_vals.umac_val[1]);
	if (mac_vals.emac_addr)
		FUNC4(bp, mac_vals.emac_addr, mac_vals.emac_val);
	if (mac_vals.bmac_addr) {
		FUNC4(bp, mac_vals.bmac_addr, mac_vals.bmac_val[0]);
		FUNC4(bp, mac_vals.bmac_addr + 4, mac_vals.bmac_val[1]);
	}

	rc = FUNC7(bp, prev_undi);
	if (rc) {
		FUNC8(bp);
		return rc;
	}

	return FUNC8(bp);
}