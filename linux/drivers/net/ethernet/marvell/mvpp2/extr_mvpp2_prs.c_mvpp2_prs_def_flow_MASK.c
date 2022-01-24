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
struct mvpp2_prs_entry {int index; } ;
struct mvpp2_port {int id; int /*<<< orphan*/  priv; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PRS_FLOW_ID_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int) ; 

int FUNC10(struct mvpp2_port *port)
{
	struct mvpp2_prs_entry pe;
	int tid;

	FUNC0(&pe, 0, sizeof(pe));

	tid = FUNC1(port->priv, port->id);

	/* Such entry not exist */
	if (tid < 0) {
		/* Go through the all entires from last to first */
		tid = FUNC7(port->priv,
						MVPP2_PE_LAST_FREE_TID,
					       MVPP2_PE_FIRST_FREE_TID);
		if (tid < 0)
			return tid;

		pe.index = tid;

		/* Set flow ID*/
		FUNC5(&pe, port->id, MVPP2_PRS_FLOW_ID_MASK);
		FUNC6(&pe, MVPP2_PRS_SRAM_LU_DONE_BIT, 1);

		/* Update shadow table */
		FUNC4(port->priv, pe.index, MVPP2_PRS_LU_FLOWS);
	} else {
		FUNC3(port->priv, &pe, tid);
	}

	FUNC8(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC9(&pe, (1 << port->id));
	FUNC2(port->priv, &pe);

	return 0;
}