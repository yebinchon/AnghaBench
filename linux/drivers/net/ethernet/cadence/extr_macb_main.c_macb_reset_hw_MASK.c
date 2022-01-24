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
typedef  int u32 ;
struct macb_queue {int dummy; } ;
struct macb {unsigned int num_queues; int caps; struct macb_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLRSTAT ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  ISR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  RE ; 
 int /*<<< orphan*/  RSR ; 
 int /*<<< orphan*/  TE ; 
 int /*<<< orphan*/  TSR ; 
 int FUNC1 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct macb_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macb_queue*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct macb *bp)
{
	struct macb_queue *queue;
	unsigned int q;
	u32 ctrl = FUNC1(bp, NCR);

	/* Disable RX and TX (XXX: Should we halt the transmission
	 * more gracefully?)
	 */
	ctrl &= ~(FUNC0(RE) | FUNC0(TE));

	/* Clear the stats registers (XXX: Update stats first?) */
	ctrl |= FUNC0(CLRSTAT);

	FUNC2(bp, NCR, ctrl);

	/* Clear all status flags */
	FUNC2(bp, TSR, -1);
	FUNC2(bp, RSR, -1);

	/* Disable all interrupts */
	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		FUNC4(queue, IDR, -1);
		FUNC3(queue, ISR);
		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
			FUNC4(queue, ISR, -1);
	}
}