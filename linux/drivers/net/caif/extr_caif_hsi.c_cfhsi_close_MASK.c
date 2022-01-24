#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct cfhsi {TYPE_1__* ops; int /*<<< orphan*/ * rx_flip_buf; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/  wq; int /*<<< orphan*/  aggregation_timer; int /*<<< orphan*/  rx_slowpath_timer; int /*<<< orphan*/  inactivity_timer; int /*<<< orphan*/  bits; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cfhsi_down ) (TYPE_1__*) ;int /*<<< orphan*/  (* cfhsi_rx_cancel ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CFHSI_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct cfhsi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfhsi* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct cfhsi *cfhsi = FUNC4(ndev);
	u8 *tx_buf, *rx_buf, *flip_buf;

	/* going to shutdown driver */
	FUNC5(CFHSI_SHUTDOWN, &cfhsi->bits);

	/* Delete timers if pending */
	FUNC1(&cfhsi->inactivity_timer);
	FUNC1(&cfhsi->rx_slowpath_timer);
	FUNC1(&cfhsi->aggregation_timer);

	/* Cancel pending RX request (if any) */
	cfhsi->ops->cfhsi_rx_cancel(cfhsi->ops);

	/* Destroy workqueue */
	FUNC2(cfhsi->wq);

	/* Store bufferes: will be freed later. */
	tx_buf = cfhsi->tx_buf;
	rx_buf = cfhsi->rx_buf;
	flip_buf = cfhsi->rx_flip_buf;
	/* Flush transmit queues. */
	FUNC0(cfhsi);

	/* Deactivate interface */
	cfhsi->ops->cfhsi_down(cfhsi->ops);

	/* Free buffers. */
	FUNC3(tx_buf);
	FUNC3(rx_buf);
	FUNC3(flip_buf);
	return 0;
}