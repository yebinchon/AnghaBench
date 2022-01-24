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
struct yam_port {scalar_t__ magic; scalar_t__ tx_state; int slotcnt; int slot; int pers; scalar_t__ dcd; scalar_t__ dupmode; int /*<<< orphan*/  send_queue; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TX_OFF ; 
 scalar_t__ YAM_MAGIC ; 
 struct yam_port* FUNC0 (struct net_device*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct yam_port*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct yam_port *yp = FUNC0(dev);

	if (yp->magic != YAM_MAGIC || yp->tx_state != TX_OFF ||
	    FUNC2(&yp->send_queue))
		return;
	/* tx_state is TX_OFF and there is data to send */

	if (yp->dupmode) {
		/* Full duplex mode, don't wait */
		FUNC3(dev, yp);
		return;
	}
	if (yp->dcd) {
		/* DCD on, wait slotime ... */
		yp->slotcnt = yp->slot / 10;
		return;
	}
	/* Is slottime passed ? */
	if ((--yp->slotcnt) > 0)
		return;

	yp->slotcnt = yp->slot / 10;

	/* is random > persist ? */
	if ((FUNC1() % 256) > yp->pers)
		return;

	FUNC3(dev, yp);
}