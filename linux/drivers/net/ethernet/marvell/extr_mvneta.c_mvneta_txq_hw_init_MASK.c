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
struct mvneta_tx_queue {int descs_phys; int size; int /*<<< orphan*/  done_pkts_coal; int /*<<< orphan*/  id; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_port*,struct mvneta_tx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mvneta_port *pp,
			       struct mvneta_tx_queue *txq)
{
	/* Set maximum bandwidth for enabled TXQs */
	FUNC5(pp, FUNC0(txq->id), 0x03ffffff);
	FUNC5(pp, FUNC1(txq->id), 0x3fffffff);

	/* Set Tx descriptors queue starting address */
	FUNC5(pp, FUNC2(txq->id), txq->descs_phys);
	FUNC5(pp, FUNC3(txq->id), txq->size);

	FUNC4(pp, txq, txq->done_pkts_coal);
}