#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ionic_txq_sg_desc {int dummy; } ;
struct ionic_txq_desc {int dummy; } ;
struct ionic_txq_comp {int dummy; } ;
struct ionic_rxq_desc {int dummy; } ;
struct ionic_rxq_comp {int dummy; } ;
struct ionic_lif {unsigned int nxqs; TYPE_4__* txqcqs; TYPE_3__* rxqcqs; TYPE_8__* ionic; int /*<<< orphan*/  kern_pid; int /*<<< orphan*/  nrxq_descs; int /*<<< orphan*/  rx_coalesce_usecs; int /*<<< orphan*/  ntxq_descs; } ;
struct TYPE_9__ {int /*<<< orphan*/  intr_ctrl; } ;
struct TYPE_14__ {TYPE_1__ idev; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
struct TYPE_13__ {TYPE_2__ intr; int /*<<< orphan*/  stats; } ;
struct TYPE_12__ {TYPE_5__* qcq; int /*<<< orphan*/  stats; } ;
struct TYPE_11__ {TYPE_5__* qcq; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 unsigned int IONIC_QCQ_F_INTR ; 
 unsigned int IONIC_QCQ_F_RX_STATS ; 
 unsigned int IONIC_QCQ_F_SG ; 
 unsigned int IONIC_QCQ_F_TX_STATS ; 
 int /*<<< orphan*/  IONIC_QTYPE_RXQ ; 
 int /*<<< orphan*/  IONIC_QTYPE_TXQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int FUNC3 (struct ionic_lif*,int /*<<< orphan*/ ,unsigned int,char*,unsigned int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_lif*) ; 

__attribute__((used)) static int FUNC5(struct ionic_lif *lif)
{
	unsigned int flags;
	unsigned int i;
	int err = 0;
	u32 coal;

	flags = IONIC_QCQ_F_TX_STATS | IONIC_QCQ_F_SG;
	for (i = 0; i < lif->nxqs; i++) {
		err = FUNC3(lif, IONIC_QTYPE_TXQ, i, "tx", flags,
				      lif->ntxq_descs,
				      sizeof(struct ionic_txq_desc),
				      sizeof(struct ionic_txq_comp),
				      sizeof(struct ionic_txq_sg_desc),
				      lif->kern_pid, &lif->txqcqs[i].qcq);
		if (err)
			goto err_out;

		lif->txqcqs[i].qcq->stats = lif->txqcqs[i].stats;
	}

	flags = IONIC_QCQ_F_RX_STATS | IONIC_QCQ_F_INTR;
	coal = FUNC0(lif->ionic, lif->rx_coalesce_usecs);
	for (i = 0; i < lif->nxqs; i++) {
		err = FUNC3(lif, IONIC_QTYPE_RXQ, i, "rx", flags,
				      lif->nrxq_descs,
				      sizeof(struct ionic_rxq_desc),
				      sizeof(struct ionic_rxq_comp),
				      0, lif->kern_pid, &lif->rxqcqs[i].qcq);
		if (err)
			goto err_out;

		lif->rxqcqs[i].qcq->stats = lif->rxqcqs[i].stats;

		FUNC1(lif->ionic->idev.intr_ctrl,
				     lif->rxqcqs[i].qcq->intr.index, coal);
		FUNC2(lif->rxqcqs[i].qcq,
					  lif->txqcqs[i].qcq);
	}

	return 0;

err_out:
	FUNC4(lif);

	return err;
}