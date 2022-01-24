#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct txdb {TYPE_2__* wptr; } ;
struct txd_desc {struct pbl* pbl; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pbl {void* pa_hi; void* pa_lo; void* len; } ;
struct bdx_priv {TYPE_5__* pdev; struct txdb txdb; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_8__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_6__ {struct sk_buff* skb; int /*<<< orphan*/  dma; } ;
struct TYPE_7__ {TYPE_1__ addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct txdb*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 TYPE_3__* txd_sizes ; 

__attribute__((used)) static inline void
FUNC10(struct bdx_priv *priv, struct sk_buff *skb,
	       struct txd_desc *txdd)
{
	struct txdb *db = &priv->txdb;
	struct pbl *pbl = &txdd->pbl[0];
	int nr_frags = FUNC9(skb)->nr_frags;
	int i;

	db->wptr->len = FUNC8(skb);
	db->wptr->addr.dma = FUNC5(priv->pdev, skb->data,
					    db->wptr->len, PCI_DMA_TODEVICE);
	pbl->len = FUNC0(db->wptr->len);
	pbl->pa_lo = FUNC0(FUNC3(db->wptr->addr.dma));
	pbl->pa_hi = FUNC0(FUNC2(db->wptr->addr.dma));
	FUNC1("=== pbl   len: 0x%x ================\n", pbl->len);
	FUNC1("=== pbl pa_lo: 0x%x ================\n", pbl->pa_lo);
	FUNC1("=== pbl pa_hi: 0x%x ================\n", pbl->pa_hi);
	FUNC4(db);

	for (i = 0; i < nr_frags; i++) {
		const skb_frag_t *frag;

		frag = &FUNC9(skb)->frags[i];
		db->wptr->len = FUNC7(frag);
		db->wptr->addr.dma = FUNC6(&priv->pdev->dev, frag,
						      0, FUNC7(frag),
						      DMA_TO_DEVICE);

		pbl++;
		pbl->len = FUNC0(db->wptr->len);
		pbl->pa_lo = FUNC0(FUNC3(db->wptr->addr.dma));
		pbl->pa_hi = FUNC0(FUNC2(db->wptr->addr.dma));
		FUNC4(db);
	}

	/* add skb clean up info. */
	db->wptr->len = -txd_sizes[nr_frags].bytes;
	db->wptr->addr.skb = skb;
	FUNC4(db);
}