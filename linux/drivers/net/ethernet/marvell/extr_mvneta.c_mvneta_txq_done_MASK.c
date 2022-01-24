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
struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {scalar_t__ count; scalar_t__ tx_wake_threshold; int /*<<< orphan*/  id; } ;
struct mvneta_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*,struct mvneta_tx_queue*,int,struct netdev_queue*) ; 
 int FUNC1 (struct mvneta_port*,struct mvneta_tx_queue*) ; 
 struct netdev_queue* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC5(struct mvneta_port *pp,
			   struct mvneta_tx_queue *txq)
{
	struct netdev_queue *nq = FUNC2(pp->dev, txq->id);
	int tx_done;

	tx_done = FUNC1(pp, txq);
	if (!tx_done)
		return;

	FUNC0(pp, txq, tx_done, nq);

	txq->count -= tx_done;

	if (FUNC3(nq)) {
		if (txq->count <= txq->tx_wake_threshold)
			FUNC4(nq);
	}
}