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
struct mrf24j40 {TYPE_1__ irq_msg; TYPE_2__ irq_trx; int /*<<< orphan*/  irq_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  mrf24j40_intstat_complete ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct mrf24j40 *devrec)
{
	FUNC1(&devrec->irq_msg);
	devrec->irq_msg.context = devrec;
	devrec->irq_msg.complete = mrf24j40_intstat_complete;
	devrec->irq_trx.len = 2;
	devrec->irq_trx.tx_buf = devrec->irq_buf;
	devrec->irq_trx.rx_buf = devrec->irq_buf;
	FUNC0(&devrec->irq_trx, &devrec->irq_msg);
}