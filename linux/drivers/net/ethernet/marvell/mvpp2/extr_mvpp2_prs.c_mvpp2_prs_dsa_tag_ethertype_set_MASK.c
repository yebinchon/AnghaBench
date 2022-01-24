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
struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_EDSA ; 
 scalar_t__ MVPP2_ETH_TYPE_LEN ; 
 int MVPP2_PE_ETYPE_DSA_TAGGED ; 
 int MVPP2_PE_ETYPE_DSA_UNTAGGED ; 
 int MVPP2_PE_ETYPE_EDSA_TAGGED ; 
 int MVPP2_PE_ETYPE_EDSA_UNTAGGED ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_DSA ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VLAN ; 
 int MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_DSA_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_NONE ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_DSA_TAGGED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,int,int) ; 

__attribute__((used)) static void FUNC13(struct mvpp2 *priv, int port,
					    bool add, bool tagged, bool extend)
{
	struct mvpp2_prs_entry pe;
	int tid, shift, port_mask;

	if (extend) {
		tid = tagged ? MVPP2_PE_ETYPE_EDSA_TAGGED :
		      MVPP2_PE_ETYPE_EDSA_UNTAGGED;
		port_mask = 0;
		shift = 8;
	} else {
		tid = tagged ? MVPP2_PE_ETYPE_DSA_TAGGED :
		      MVPP2_PE_ETYPE_DSA_UNTAGGED;
		port_mask = MVPP2_PRS_PORT_MASK;
		shift = 4;
	}

	if (priv->prs_shadow[tid].valid) {
		/* Entry exist - update port only */
		FUNC2(priv, &pe, tid);
	} else {
		/* Entry doesn't exist - create new */
		FUNC0(&pe, 0, sizeof(pe));
		FUNC10(&pe, MVPP2_PRS_LU_DSA);
		pe.index = tid;

		/* Set ethertype */
		FUNC3(&pe, 0, ETH_P_EDSA);
		FUNC3(&pe, 2, 0);

		FUNC7(&pe, MVPP2_PRS_RI_DSA_MASK,
					 MVPP2_PRS_RI_DSA_MASK);
		/* Shift ethertype + 2 byte reserved + tag*/
		FUNC8(&pe, 2 + MVPP2_ETH_TYPE_LEN + shift,
					 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

		/* Update shadow table */
		FUNC4(priv, pe.index, MVPP2_PRS_LU_DSA);

		if (tagged) {
			/* Set tagged bit in DSA tag */
			FUNC9(&pe,
						     MVPP2_ETH_TYPE_LEN + 2 + 3,
						 MVPP2_PRS_TCAM_DSA_TAGGED_BIT,
						 MVPP2_PRS_TCAM_DSA_TAGGED_BIT);
			/* Clear all ai bits for next iteration */
			FUNC5(&pe, 0,
						 MVPP2_PRS_SRAM_AI_MASK);
			/* If packet is tagged continue check vlans */
			FUNC6(&pe, MVPP2_PRS_LU_VLAN);
		} else {
			/* Set result info bits to 'no vlans' */
			FUNC7(&pe, MVPP2_PRS_RI_VLAN_NONE,
						 MVPP2_PRS_RI_VLAN_MASK);
			FUNC6(&pe, MVPP2_PRS_LU_L2);
		}
		/* Mask/unmask all ports, depending on dsa type */
		FUNC11(&pe, port_mask);
	}

	/* Update port mask */
	FUNC12(&pe, port, add);

	FUNC1(priv, &pe);
}