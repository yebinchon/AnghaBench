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
struct fm10k_intfc {int num_rx_queues; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	int i;

	/* Configure SWPRI to PC map */
	FUNC2(interface);

	/* Configure RSS and DGLORT map */
	FUNC0(interface);

	/* Setup the HW Rx Head and Tail descriptor pointers */
	for (i = 0; i < interface->num_rx_queues; i++)
		FUNC1(interface, interface->rx_ring[i]);

	/* possible poll here to verify that Rx rings are now enabled */
}