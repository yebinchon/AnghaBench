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
struct bna_ethport {scalar_t__ rx_started_count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_ETHPORT_F_RX_STARTED ; 
 int /*<<< orphan*/  ETHPORT_E_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bna_ethport*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bna_ethport*) ; 

void
FUNC2(struct bna_ethport *ethport)
{
	int ethport_up = FUNC1(ethport);

	ethport->rx_started_count--;

	if (ethport->rx_started_count == 0) {
		ethport->flags &= ~BNA_ETHPORT_F_RX_STARTED;

		if (ethport_up)
			FUNC0(ethport, ETHPORT_E_DOWN);
	}
}