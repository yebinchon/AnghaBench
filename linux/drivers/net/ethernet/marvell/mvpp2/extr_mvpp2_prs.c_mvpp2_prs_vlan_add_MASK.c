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
struct TYPE_2__ {scalar_t__ lu; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int EINVAL ; 
 int MVPP2_PE_FIRST_FREE_TID ; 
 int MVPP2_PE_LAST_FREE_TID ; 
 int MVPP2_PRS_DBL_VLAN_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VID ; 
 scalar_t__ MVPP2_PRS_LU_VLAN ; 
 unsigned int MVPP2_PRS_RI_VLAN_DOUBLE ; 
 unsigned int MVPP2_PRS_RI_VLAN_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_SINGLE ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_VLAN_TRIPLE ; 
 int MVPP2_PRS_SINGLE_VLAN_AI ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mvpp2*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,unsigned int) ; 
 int FUNC13 (struct mvpp2*,unsigned short,int) ; 

__attribute__((used)) static int FUNC14(struct mvpp2 *priv, unsigned short tpid, int ai,
			      unsigned int port_map)
{
	struct mvpp2_prs_entry pe;
	int tid_aux, tid;
	int ret = 0;

	FUNC0(&pe, 0, sizeof(pe));

	tid = FUNC13(priv, tpid, ai);

	if (tid < 0) {
		/* Create new tcam entry */
		tid = FUNC10(priv, MVPP2_PE_LAST_FREE_TID,
						MVPP2_PE_FIRST_FREE_TID);
		if (tid < 0)
			return tid;

		/* Get last double vlan tid */
		for (tid_aux = MVPP2_PE_LAST_FREE_TID;
		     tid_aux >= MVPP2_PE_FIRST_FREE_TID; tid_aux--) {
			unsigned int ri_bits;

			if (!priv->prs_shadow[tid_aux].valid ||
			    priv->prs_shadow[tid_aux].lu != MVPP2_PRS_LU_VLAN)
				continue;

			FUNC2(priv, &pe, tid_aux);
			ri_bits = FUNC7(&pe);
			if ((ri_bits & MVPP2_PRS_RI_VLAN_MASK) ==
			    MVPP2_PRS_RI_VLAN_DOUBLE)
				break;
		}

		if (tid <= tid_aux)
			return -EINVAL;

		FUNC0(&pe, 0, sizeof(pe));
		pe.index = tid;
		FUNC11(&pe, MVPP2_PRS_LU_VLAN);

		FUNC3(&pe, 0, tpid);

		/* VLAN tag detected, proceed with VID filtering */
		FUNC6(&pe, MVPP2_PRS_LU_VID);

		/* Clear all ai bits for next iteration */
		FUNC5(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

		if (ai == MVPP2_PRS_SINGLE_VLAN_AI) {
			FUNC8(&pe, MVPP2_PRS_RI_VLAN_SINGLE,
						 MVPP2_PRS_RI_VLAN_MASK);
		} else {
			ai |= MVPP2_PRS_DBL_VLAN_AI_BIT;
			FUNC8(&pe, MVPP2_PRS_RI_VLAN_TRIPLE,
						 MVPP2_PRS_RI_VLAN_MASK);
		}
		FUNC9(&pe, ai, MVPP2_PRS_SRAM_AI_MASK);

		FUNC4(priv, pe.index, MVPP2_PRS_LU_VLAN);
	} else {
		FUNC2(priv, &pe, tid);
	}
	/* Update ports' mask */
	FUNC12(&pe, port_map);

	FUNC1(priv, &pe);

	return ret;
}