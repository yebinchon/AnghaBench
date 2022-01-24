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
struct macb_queue {unsigned int tx_head; unsigned int tx_tail; struct macb* bp; } ;
struct macb {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  TSTART ; 
 int /*<<< orphan*/  TXUBR ; 
 int FUNC1 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct macb_queue*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct macb_queue *queue)
{
	unsigned int head = queue->tx_head;
	unsigned int tail = queue->tx_tail;
	struct macb *bp = queue->bp;

	if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
		FUNC3(queue, ISR, FUNC0(TXUBR));

	if (head == tail)
		return;

	FUNC2(bp, NCR, FUNC1(bp, NCR) | FUNC0(TSTART));
}