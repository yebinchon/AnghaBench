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
typedef  int u32 ;
struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {int id; scalar_t__ count; } ;
struct mvneta_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 struct mvneta_tx_queue* FUNC2 (struct mvneta_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,struct mvneta_tx_queue*) ; 
 struct netdev_queue* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct mvneta_port *pp, u32 cause_tx_done)
{
	struct mvneta_tx_queue *txq;
	struct netdev_queue *nq;
	int cpu = FUNC5();

	while (cause_tx_done) {
		txq = FUNC2(pp, cause_tx_done);

		nq = FUNC4(pp->dev, txq->id);
		FUNC0(nq, cpu);

		if (txq->count)
			FUNC3(pp, txq);

		FUNC1(nq);
		cause_tx_done &= ~((1 << txq->id));
	}
}