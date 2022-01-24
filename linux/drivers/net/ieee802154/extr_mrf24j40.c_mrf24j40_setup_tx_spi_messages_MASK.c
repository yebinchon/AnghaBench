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
struct TYPE_4__ {struct mrf24j40* context; int /*<<< orphan*/  complete; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  tx_buf; } ;
struct mrf24j40 {TYPE_1__ tx_post_msg; TYPE_2__ tx_post_trx; int /*<<< orphan*/  tx_post_buf; TYPE_1__ tx_msg; TYPE_2__ tx_buf_trx; TYPE_2__ tx_len_trx; int /*<<< orphan*/  tx_len_buf; TYPE_2__ tx_hdr_trx; int /*<<< orphan*/  tx_hdr_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_tx_buf_complete ; 

__attribute__((used)) static void
FUNC2(struct mrf24j40 *devrec)
{
	FUNC1(&devrec->tx_msg);
	devrec->tx_msg.context = devrec;
	devrec->tx_msg.complete = write_tx_buf_complete;
	devrec->tx_hdr_trx.len = 2;
	devrec->tx_hdr_trx.tx_buf = devrec->tx_hdr_buf;
	FUNC0(&devrec->tx_hdr_trx, &devrec->tx_msg);
	devrec->tx_len_trx.len = 2;
	devrec->tx_len_trx.tx_buf = devrec->tx_len_buf;
	FUNC0(&devrec->tx_len_trx, &devrec->tx_msg);
	FUNC0(&devrec->tx_buf_trx, &devrec->tx_msg);

	FUNC1(&devrec->tx_post_msg);
	devrec->tx_post_msg.context = devrec;
	devrec->tx_post_trx.len = 2;
	devrec->tx_post_trx.tx_buf = devrec->tx_post_buf;
	FUNC0(&devrec->tx_post_trx, &devrec->tx_post_msg);
}