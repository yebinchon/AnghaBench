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
 int MVPP2_PE_DSA_TAGGED ; 
 int MVPP2_PE_DSA_UNTAGGED ; 
 int MVPP2_PE_EDSA_TAGGED ; 
 int MVPP2_PE_EDSA_UNTAGGED ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_DSA ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VID ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_NONE ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_SINGLE ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_DSA_TAGGED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int,int) ; 

__attribute__((used)) static void FUNC12(struct mvpp2 *priv, int port, bool add,
				  bool tagged, bool extend)
{
	struct mvpp2_prs_entry pe;
	int tid, shift;

	if (extend) {
		tid = tagged ? MVPP2_PE_EDSA_TAGGED : MVPP2_PE_EDSA_UNTAGGED;
		shift = 8;
	} else {
		tid = tagged ? MVPP2_PE_DSA_TAGGED : MVPP2_PE_DSA_UNTAGGED;
		shift = 4;
	}

	if (priv->prs_shadow[tid].valid) {
		/* Entry exist - update port only */
		FUNC2(priv, &pe, tid);
	} else {
		/* Entry doesn't exist - create new */
		FUNC0(&pe, 0, sizeof(pe));
		FUNC9(&pe, MVPP2_PRS_LU_DSA);
		pe.index = tid;

		/* Update shadow table */
		FUNC3(priv, pe.index, MVPP2_PRS_LU_DSA);

		if (tagged) {
			/* Set tagged bit in DSA tag */
			FUNC8(&pe, 0,
					     MVPP2_PRS_TCAM_DSA_TAGGED_BIT,
					     MVPP2_PRS_TCAM_DSA_TAGGED_BIT);

			/* Set ai bits for next iteration */
			if (extend)
				FUNC4(&pe, 1,
							MVPP2_PRS_SRAM_AI_MASK);
			else
				FUNC4(&pe, 0,
							MVPP2_PRS_SRAM_AI_MASK);

			/* Set result info bits to 'single vlan' */
			FUNC6(&pe, MVPP2_PRS_RI_VLAN_SINGLE,
						 MVPP2_PRS_RI_VLAN_MASK);
			/* If packet is tagged continue check vid filtering */
			FUNC5(&pe, MVPP2_PRS_LU_VID);
		} else {
			/* Shift 4 bytes for DSA tag or 8 bytes for EDSA tag*/
			FUNC7(&pe, shift,
					MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

			/* Set result info bits to 'no vlans' */
			FUNC6(&pe, MVPP2_PRS_RI_VLAN_NONE,
						 MVPP2_PRS_RI_VLAN_MASK);
			FUNC5(&pe, MVPP2_PRS_LU_L2);
		}

		/* Mask all ports */
		FUNC10(&pe, 0);
	}

	/* Update port mask */
	FUNC11(&pe, port, add);

	FUNC1(priv, &pe);
}