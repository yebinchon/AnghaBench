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
struct mvpp2_prs_entry {unsigned int index; } ;
struct mvpp2_port {int /*<<< orphan*/  id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 unsigned int MVPP2_DSA_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VID ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_DROP_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int MVPP2_VLAN_TAG_EDSA_LEN ; 
 unsigned int MVPP2_VLAN_TAG_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC12 (struct mvpp2*,int /*<<< orphan*/ ) ; 

void FUNC13(struct mvpp2_port *port)
{
	unsigned int tid = FUNC1(port->id);
	struct mvpp2 *priv = port->priv;
	unsigned int reg_val, shift;
	struct mvpp2_prs_entry pe;

	if (priv->prs_shadow[tid].valid)
		return;

	FUNC2(&pe, 0, sizeof(pe));

	pe.index = tid;

	reg_val = FUNC12(priv, FUNC0(port->id));
	if (reg_val & MVPP2_DSA_EXTENDED)
		shift = MVPP2_VLAN_TAG_EDSA_LEN;
	else
		shift = MVPP2_VLAN_TAG_LEN;

	FUNC9(&pe, MVPP2_PRS_LU_VID);

	/* Mask all ports */
	FUNC10(&pe, 0);

	/* Update port mask */
	FUNC11(&pe, port->id, true);

	/* Continue - set next lookup */
	FUNC6(&pe, MVPP2_PRS_LU_L2);

	/* Skip VLAN header - Set offset to 4 or 8 bytes */
	FUNC8(&pe, shift, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	/* Drop VLAN packets that don't belong to any VIDs on this port */
	FUNC7(&pe, MVPP2_PRS_RI_DROP_MASK,
				 MVPP2_PRS_RI_DROP_MASK);

	/* Clear all ai bits for next iteration */
	FUNC5(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

	/* Update shadow table */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_VID);
	FUNC3(priv, &pe);
}