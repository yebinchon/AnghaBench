#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tx_desc {int dummy; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  phys_addr; scalar_t__ desc; int /*<<< orphan*/  cntxt_id; } ;
struct sge_qset {TYPE_2__ rspq; TYPE_3__* txq; TYPE_4__* fl; } ;
struct rx_desc {int dummy; } ;
struct rsp_desc {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg_lock; } ;
struct adapter {TYPE_1__ sge; struct pci_dev* pdev; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  phys_addr; scalar_t__ desc; scalar_t__ sdesc; int /*<<< orphan*/  cntxt_id; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  sendq; int /*<<< orphan*/  phys_addr; scalar_t__ desc; scalar_t__ sdesc; int /*<<< orphan*/  in_use; int /*<<< orphan*/  cntxt_id; } ;

/* Variables and functions */
 int SGE_RXQ_PER_SET ; 
 int SGE_TXQ_PER_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct adapter *adapter, struct sge_qset *q)
{
	int i;
	struct pci_dev *pdev = adapter->pdev;

	for (i = 0; i < SGE_RXQ_PER_SET; ++i)
		if (q->fl[i].desc) {
			FUNC5(&adapter->sge.reg_lock);
			FUNC8(adapter, q->fl[i].cntxt_id);
			FUNC6(&adapter->sge.reg_lock);
			FUNC2(pdev, &q->fl[i]);
			FUNC4(q->fl[i].sdesc);
			FUNC1(&pdev->dev,
					  q->fl[i].size *
					  sizeof(struct rx_desc), q->fl[i].desc,
					  q->fl[i].phys_addr);
		}

	for (i = 0; i < SGE_TXQ_PER_SET; ++i)
		if (q->txq[i].desc) {
			FUNC5(&adapter->sge.reg_lock);
			FUNC10(adapter, q->txq[i].cntxt_id, 0);
			FUNC6(&adapter->sge.reg_lock);
			if (q->txq[i].sdesc) {
				FUNC3(adapter, &q->txq[i],
					     q->txq[i].in_use);
				FUNC4(q->txq[i].sdesc);
			}
			FUNC1(&pdev->dev,
					  q->txq[i].size *
					  sizeof(struct tx_desc),
					  q->txq[i].desc, q->txq[i].phys_addr);
			FUNC0(&q->txq[i].sendq);
		}

	if (q->rspq.desc) {
		FUNC5(&adapter->sge.reg_lock);
		FUNC9(adapter, q->rspq.cntxt_id);
		FUNC6(&adapter->sge.reg_lock);
		FUNC1(&pdev->dev,
				  q->rspq.size * sizeof(struct rsp_desc),
				  q->rspq.desc, q->rspq.phys_addr);
	}

	FUNC7(q);
}