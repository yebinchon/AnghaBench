#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* link_available; TYPE_1__* dev; scalar_t__ reset_type; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  int PI_UINT32 ;
typedef  TYPE_2__ DFX_board_t ;

/* Variables and functions */
 scalar_t__ DFX_K_SUCCESS ; 
 int PI_HOST_INT_K_DISABLE_ALL_INTS ; 
 void* PI_K_FALSE ; 
 void* PI_K_TRUE ; 
 int /*<<< orphan*/  PI_PCTRL_M_XMT_DATA_FLUSH_DONE ; 
 int /*<<< orphan*/  PI_PDQ_K_REG_HOST_INT_ENB ; 
 int /*<<< orphan*/  PI_PDQ_K_REG_TYPE_0_STATUS ; 
 int PI_STATE_K_HALTED ; 
 int PI_STATE_K_LINK_AVAIL ; 
 int PI_TYPE_0_STAT_M_BUS_PAR_ERR ; 
 int PI_TYPE_0_STAT_M_NXM ; 
 int PI_TYPE_0_STAT_M_PM_PAR_ERR ; 
 int PI_TYPE_0_STAT_M_STATE_CHANGE ; 
 int PI_TYPE_0_STAT_M_XMT_FLUSH ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(DFX_board_t	*bp)

	{
	PI_UINT32	type_0_status;		/* Host Interrupt Type 0 register */
	PI_UINT32	state;				/* current adap state (from port status) */

	/*
	 * Read host interrupt Type 0 register to determine which Type 0
	 * interrupts are pending.  Immediately write it back out to clear
	 * those interrupts.
	 */

	FUNC4(bp, PI_PDQ_K_REG_TYPE_0_STATUS, &type_0_status);
	FUNC5(bp, PI_PDQ_K_REG_TYPE_0_STATUS, type_0_status);

	/* Check for Type 0 error interrupts */

	if (type_0_status & (PI_TYPE_0_STAT_M_NXM |
							PI_TYPE_0_STAT_M_PM_PAR_ERR |
							PI_TYPE_0_STAT_M_BUS_PAR_ERR))
		{
		/* Check for Non-Existent Memory error */

		if (type_0_status & PI_TYPE_0_STAT_M_NXM)
			FUNC7("%s: Non-Existent Memory Access Error\n", bp->dev->name);

		/* Check for Packet Memory Parity error */

		if (type_0_status & PI_TYPE_0_STAT_M_PM_PAR_ERR)
			FUNC7("%s: Packet Memory Parity Error\n", bp->dev->name);

		/* Check for Host Bus Parity error */

		if (type_0_status & PI_TYPE_0_STAT_M_BUS_PAR_ERR)
			FUNC7("%s: Host Bus Parity Error\n", bp->dev->name);

		/* Reset adapter and bring it back on-line */

		bp->link_available = PI_K_FALSE;	/* link is no longer available */
		bp->reset_type = 0;					/* rerun on-board diagnostics */
		FUNC7("%s: Resetting adapter...\n", bp->dev->name);
		if (FUNC0(bp, 0) != DFX_K_SUCCESS)
			{
			FUNC7("%s: Adapter reset failed!  Disabling adapter interrupts.\n", bp->dev->name);
			FUNC5(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);
			return;
			}
		FUNC7("%s: Adapter reset successful!\n", bp->dev->name);
		return;
		}

	/* Check for transmit flush interrupt */

	if (type_0_status & PI_TYPE_0_STAT_M_XMT_FLUSH)
		{
		/* Flush any pending xmt's and acknowledge the flush interrupt */

		bp->link_available = PI_K_FALSE;		/* link is no longer available */
		FUNC6(bp);						/* flush any outstanding packets */
		(void) FUNC2(bp,
									PI_PCTRL_M_XMT_DATA_FLUSH_DONE,
									0,
									0,
									NULL);
		}

	/* Check for adapter state change */

	if (type_0_status & PI_TYPE_0_STAT_M_STATE_CHANGE)
		{
		/* Get latest adapter state */

		state = FUNC1(bp);	/* get adapter state */
		if (state == PI_STATE_K_HALTED)
			{
			/*
			 * Adapter has transitioned to HALTED state, try to reset
			 * adapter to bring it back on-line.  If reset fails,
			 * leave the adapter in the broken state.
			 */

			FUNC7("%s: Controller has transitioned to HALTED state!\n", bp->dev->name);
			FUNC3(bp);			/* display halt id as string */

			/* Reset adapter and bring it back on-line */

			bp->link_available = PI_K_FALSE;	/* link is no longer available */
			bp->reset_type = 0;					/* rerun on-board diagnostics */
			FUNC7("%s: Resetting adapter...\n", bp->dev->name);
			if (FUNC0(bp, 0) != DFX_K_SUCCESS)
				{
				FUNC7("%s: Adapter reset failed!  Disabling adapter interrupts.\n", bp->dev->name);
				FUNC5(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);
				return;
				}
			FUNC7("%s: Adapter reset successful!\n", bp->dev->name);
			}
		else if (state == PI_STATE_K_LINK_AVAIL)
			{
			bp->link_available = PI_K_TRUE;		/* set link available flag */
			}
		}
	}