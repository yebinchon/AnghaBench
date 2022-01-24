#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dma; scalar_t__ virt; int /*<<< orphan*/  size; } ;
struct TYPE_11__ {TYPE_4__* pdev; } ;
struct alx_priv {int num_txq; TYPE_6__ descmem; TYPE_5__ hw; TYPE_3__** qnapi; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {TYPE_2__* rxq; TYPE_1__* txq; } ;
struct TYPE_8__ {int /*<<< orphan*/  bufs; } ;
struct TYPE_7__ {int /*<<< orphan*/  bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alx_priv *alx)
{
	int i;

	FUNC0(alx);

	for (i = 0; i < alx->num_txq; i++)
		if (alx->qnapi[i] && alx->qnapi[i]->txq)
			FUNC2(alx->qnapi[i]->txq->bufs);

	if (alx->qnapi[0] && alx->qnapi[0]->rxq)
		FUNC2(alx->qnapi[0]->rxq->bufs);

	if (alx->descmem.virt)
		FUNC1(&alx->hw.pdev->dev,
				  alx->descmem.size,
				  alx->descmem.virt,
				  alx->descmem.dma);
}