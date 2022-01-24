#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  complete; struct mrf24j40* context; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct mrf24j40 {TYPE_1__ rx_buf_msg; TYPE_2__ rx_lqi_trx; int /*<<< orphan*/  rx_lqi_buf; TYPE_2__ rx_fifo_buf_trx; int /*<<< orphan*/  rx_fifo_buf; TYPE_2__ rx_addr_trx; int /*<<< orphan*/  rx_addr_buf; TYPE_1__ rx_msg; TYPE_2__ rx_trx; int /*<<< orphan*/  rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  mrf24j40_handle_rx_read_buf_complete ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct mrf24j40 *devrec)
{
	FUNC1(&devrec->rx_msg);
	devrec->rx_msg.context = devrec;
	devrec->rx_trx.len = 2;
	devrec->rx_trx.tx_buf = devrec->rx_buf;
	devrec->rx_trx.rx_buf = devrec->rx_buf;
	FUNC0(&devrec->rx_trx, &devrec->rx_msg);

	FUNC1(&devrec->rx_buf_msg);
	devrec->rx_buf_msg.context = devrec;
	devrec->rx_buf_msg.complete = mrf24j40_handle_rx_read_buf_complete;
	devrec->rx_addr_trx.len = 2;
	devrec->rx_addr_trx.tx_buf = devrec->rx_addr_buf;
	FUNC0(&devrec->rx_addr_trx, &devrec->rx_buf_msg);
	devrec->rx_fifo_buf_trx.rx_buf = devrec->rx_fifo_buf;
	FUNC0(&devrec->rx_fifo_buf_trx, &devrec->rx_buf_msg);
	devrec->rx_lqi_trx.len = 2;
	devrec->rx_lqi_trx.rx_buf = devrec->rx_lqi_buf;
	FUNC0(&devrec->rx_lqi_trx, &devrec->rx_buf_msg);
}