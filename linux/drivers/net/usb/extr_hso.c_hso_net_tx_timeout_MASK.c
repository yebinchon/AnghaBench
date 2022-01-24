#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct hso_net {TYPE_2__* mux_bulk_tx_urb; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hso_net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct net_device *net)
{
	struct hso_net *odev = FUNC1(net);

	if (!odev)
		return;

	/* Tell syslog we are hosed. */
	FUNC0(&net->dev, "Tx timed out.\n");

	/* Tear the waiting frame off the list */
	if (odev->mux_bulk_tx_urb &&
	    (odev->mux_bulk_tx_urb->status == -EINPROGRESS))
		FUNC2(odev->mux_bulk_tx_urb);

	/* Update statistics */
	net->stats.tx_errors++;
}