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
struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {int size; scalar_t__ descs_phys; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int /*<<< orphan*/ * descs; scalar_t__ tso_hdrs_phys; int /*<<< orphan*/ * tso_hdrs; int /*<<< orphan*/  tx_skb; int /*<<< orphan*/  id; } ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int MVNETA_DESC_ALIGNED_SIZE ; 
 int TSO_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC4(struct mvneta_port *pp,
				 struct mvneta_tx_queue *txq)
{
	struct netdev_queue *nq = FUNC2(pp->dev, txq->id);

	FUNC1(txq->tx_skb);

	if (txq->tso_hdrs)
		FUNC0(pp->dev->dev.parent,
				  txq->size * TSO_HEADER_SIZE,
				  txq->tso_hdrs, txq->tso_hdrs_phys);
	if (txq->descs)
		FUNC0(pp->dev->dev.parent,
				  txq->size * MVNETA_DESC_ALIGNED_SIZE,
				  txq->descs, txq->descs_phys);

	FUNC3(nq);

	txq->descs             = NULL;
	txq->last_desc         = 0;
	txq->next_desc_to_proc = 0;
	txq->descs_phys        = 0;
}