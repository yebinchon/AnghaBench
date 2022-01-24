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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PRS_FLOW_ID_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

int FUNC9(struct mvpp2 *priv, int flow, u32 ri, u32 ri_mask)
{
	struct mvpp2_prs_entry pe;
	u8 *ri_byte, *ri_byte_mask;
	int tid, i;

	FUNC0(&pe, 0, sizeof(pe));

	tid = FUNC6(priv,
					MVPP2_PE_LAST_FREE_TID,
					MVPP2_PE_FIRST_FREE_TID);
	if (tid < 0)
		return tid;

	pe.index = tid;

	ri_byte = (u8 *)&ri;
	ri_byte_mask = (u8 *)&ri_mask;

	FUNC3(&pe, flow, MVPP2_PRS_FLOW_ID_MASK);
	FUNC4(&pe, MVPP2_PRS_SRAM_LU_DONE_BIT, 1);

	for (i = 0; i < 4; i++) {
		FUNC5(&pe, i, ri_byte[i],
					     ri_byte_mask[i]);
	}

	FUNC2(priv, pe.index, MVPP2_PRS_LU_FLOWS);
	FUNC7(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC8(&pe, MVPP2_PRS_PORT_MASK);
	FUNC1(priv, &pe);

	return 0;
}