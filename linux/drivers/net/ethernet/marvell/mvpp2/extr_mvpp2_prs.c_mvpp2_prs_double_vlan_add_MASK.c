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
struct mvpp2 {int* prs_double_vlans; TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
struct TYPE_2__ {scalar_t__ lu; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int ERANGE ; 
 int MVPP2_PE_FIRST_FREE_TID ; 
 int MVPP2_PE_LAST_FREE_TID ; 
 int MVPP2_PRS_DBL_VLAN_AI_BIT ; 
 scalar_t__ MVPP2_PRS_LU_VLAN ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_DOUBLE ; 
 unsigned int MVPP2_PRS_RI_VLAN_MASK ; 
 unsigned int MVPP2_PRS_RI_VLAN_SINGLE ; 
 unsigned int MVPP2_PRS_RI_VLAN_TRIPLE ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_VLAN_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mvpp2*) ; 
 int FUNC2 (struct mvpp2*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,scalar_t__) ; 
 unsigned int FUNC9 (struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mvpp2*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mvpp2_prs_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct mvpp2_prs_entry*,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct mvpp2 *priv, unsigned short tpid1,
				     unsigned short tpid2,
				     unsigned int port_map)
{
	int tid_aux, tid, ai, ret = 0;
	struct mvpp2_prs_entry pe;

	FUNC0(&pe, 0, sizeof(pe));

	tid = FUNC2(priv, tpid1, tpid2);

	if (tid < 0) {
		/* Create new tcam entry */
		tid = FUNC12(priv, MVPP2_PE_FIRST_FREE_TID,
				MVPP2_PE_LAST_FREE_TID);
		if (tid < 0)
			return tid;

		/* Set ai value for new double vlan entry */
		ai = FUNC1(priv);
		if (ai < 0)
			return ai;

		/* Get first single/triple vlan tid */
		for (tid_aux = MVPP2_PE_FIRST_FREE_TID;
		     tid_aux <= MVPP2_PE_LAST_FREE_TID; tid_aux++) {
			unsigned int ri_bits;

			if (!priv->prs_shadow[tid_aux].valid ||
			    priv->prs_shadow[tid_aux].lu != MVPP2_PRS_LU_VLAN)
				continue;

			FUNC4(priv, &pe, tid_aux);
			ri_bits = FUNC9(&pe);
			ri_bits &= MVPP2_PRS_RI_VLAN_MASK;
			if (ri_bits == MVPP2_PRS_RI_VLAN_SINGLE ||
			    ri_bits == MVPP2_PRS_RI_VLAN_TRIPLE)
				break;
		}

		if (tid >= tid_aux)
			return -ERANGE;

		FUNC0(&pe, 0, sizeof(pe));
		FUNC13(&pe, MVPP2_PRS_LU_VLAN);
		pe.index = tid;

		priv->prs_double_vlans[ai] = true;

		FUNC5(&pe, 0, tpid1);
		FUNC5(&pe, 4, tpid2);

		FUNC8(&pe, MVPP2_PRS_LU_VLAN);
		/* Shift 4 bytes - skip outer vlan tag */
		FUNC11(&pe, MVPP2_VLAN_TAG_LEN,
					 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
		FUNC10(&pe, MVPP2_PRS_RI_VLAN_DOUBLE,
					 MVPP2_PRS_RI_VLAN_MASK);
		FUNC7(&pe, ai | MVPP2_PRS_DBL_VLAN_AI_BIT,
					 MVPP2_PRS_SRAM_AI_MASK);

		FUNC6(priv, pe.index, MVPP2_PRS_LU_VLAN);
	} else {
		FUNC4(priv, &pe, tid);
	}

	/* Update ports' mask */
	FUNC14(&pe, port_map);
	FUNC3(priv, &pe);

	return ret;
}