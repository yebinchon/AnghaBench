#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {char* name; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;
struct alx_priv {int num_napi; char* irq_lbl; int vec_idx; struct alx_priv** qnapi; TYPE_3__ hw; TYPE_2__* rxq; TYPE_1__* txq; struct net_device* dev; } ;
struct alx_napi {int num_napi; char* irq_lbl; int vec_idx; struct alx_napi** qnapi; TYPE_3__ hw; TYPE_2__* rxq; TYPE_1__* txq; struct net_device* dev; } ;
struct TYPE_5__ {int queue_idx; } ;
struct TYPE_4__ {int queue_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  alx_intr_msix_misc ; 
 int /*<<< orphan*/  alx_intr_msix_ring ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct alx_priv *alx)
{
	struct net_device *netdev = alx->dev;
	int i, err, vector = 0, free_vector = 0;

	err = FUNC2(FUNC1(alx->hw.pdev, 0), alx_intr_msix_misc,
			  0, netdev->name, alx);
	if (err)
		goto out_err;

	for (i = 0; i < alx->num_napi; i++) {
		struct alx_napi *np = alx->qnapi[i];

		vector++;

		if (np->txq && np->rxq)
			FUNC3(np->irq_lbl, "%s-TxRx-%u", netdev->name,
				np->txq->queue_idx);
		else if (np->txq)
			FUNC3(np->irq_lbl, "%s-tx-%u", netdev->name,
				np->txq->queue_idx);
		else if (np->rxq)
			FUNC3(np->irq_lbl, "%s-rx-%u", netdev->name,
				np->rxq->queue_idx);
		else
			FUNC3(np->irq_lbl, "%s-unused", netdev->name);

		np->vec_idx = vector;
		err = FUNC2(FUNC1(alx->hw.pdev, vector),
				  alx_intr_msix_ring, 0, np->irq_lbl, np);
		if (err)
			goto out_free;
	}
	return 0;

out_free:
	FUNC0(FUNC1(alx->hw.pdev, free_vector++), alx);

	vector--;
	for (i = 0; i < vector; i++)
		FUNC0(FUNC1(alx->hw.pdev,free_vector++),
			 alx->qnapi[i]);

out_err:
	return err;
}