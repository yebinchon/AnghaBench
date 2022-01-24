#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; scalar_t__ head; scalar_t__ tail; int /*<<< orphan*/ ** skb; } ;
struct qcaspi {TYPE_3__* net_dev; TYPE_2__ txr; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int TX_RING_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(struct qcaspi *qca)
{
	int i;

	/* XXX After inconsistent lock states netif_tx_lock()
	 * has been replaced by netif_tx_lock_bh() and so on.
	 */
	FUNC1(qca->net_dev);
	for (i = 0; i < TX_RING_MAX_LEN; i++) {
		if (qca->txr.skb[i]) {
			FUNC0(qca->txr.skb[i]);
			qca->txr.skb[i] = NULL;
			qca->net_dev->stats.tx_dropped++;
		}
	}
	qca->txr.tail = 0;
	qca->txr.head = 0;
	qca->txr.size = 0;
	FUNC2(qca->net_dev);
}