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
struct TYPE_4__ {int /*<<< orphan*/  complete; struct mcr20a_local* context; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  tx_buf; } ;
struct mcr20a_local {TYPE_1__ tx_buf_msg; TYPE_2__ tx_xfer_buf; TYPE_2__ tx_xfer_len; TYPE_2__ tx_xfer_header; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  mcr20a_write_tx_buf_complete ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct mcr20a_local *lp)
{
	FUNC1(&lp->tx_buf_msg);
	lp->tx_buf_msg.context = lp;
	lp->tx_buf_msg.complete = mcr20a_write_tx_buf_complete;

	lp->tx_xfer_header.len = 1;
	lp->tx_xfer_header.tx_buf = lp->tx_header;

	lp->tx_xfer_len.len = 1;
	lp->tx_xfer_len.tx_buf = lp->tx_len;

	FUNC0(&lp->tx_xfer_header, &lp->tx_buf_msg);
	FUNC0(&lp->tx_xfer_len, &lp->tx_buf_msg);
	FUNC0(&lp->tx_xfer_buf, &lp->tx_buf_msg);
}