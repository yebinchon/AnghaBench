#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  pktsz; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxdb {scalar_t__ nelem; } ;
struct rx_map {int /*<<< orphan*/  skb; scalar_t__ dma; } ;
struct bdx_priv {int /*<<< orphan*/  pdev; struct rxdb* rxdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct rx_map* FUNC1 (struct rxdb*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct rxdb*) ; 
 scalar_t__ FUNC3 (struct rxdb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bdx_priv *priv, struct rxf_fifo *f)
{
	struct rx_map *dm;
	struct rxdb *db = priv->rxdb;
	u16 i;

	ENTER;
	FUNC0("total=%d free=%d busy=%d\n", db->nelem, FUNC3(db),
	    db->nelem - FUNC3(db));
	while (FUNC3(db) > 0) {
		i = FUNC2(db);
		dm = FUNC1(db, i);
		dm->dma = 0;
	}
	for (i = 0; i < db->nelem; i++) {
		dm = FUNC1(db, i);
		if (dm->dma) {
			FUNC5(priv->pdev,
					 dm->dma, f->m.pktsz,
					 PCI_DMA_FROMDEVICE);
			FUNC4(dm->skb);
		}
	}
}