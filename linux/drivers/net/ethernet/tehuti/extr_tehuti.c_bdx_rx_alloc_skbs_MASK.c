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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int pktsz; int va; int wptr; int memsz; int /*<<< orphan*/  reg_WPTR; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxf_desc {int va_lo; void* len; void* pa_hi; void* pa_lo; void* info; } ;
struct rxdb {int dummy; } ;
struct rx_map {int /*<<< orphan*/  dma; struct sk_buff* skb; } ;
struct bdx_priv {int /*<<< orphan*/  pdev; int /*<<< orphan*/  ndev; struct rxdb* rxdb; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ENTER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int TXF_WPTR_WR_PTR ; 
 int /*<<< orphan*/  FUNC5 (struct bdx_priv*,int /*<<< orphan*/ ,int) ; 
 struct rx_map* FUNC6 (struct rxdb*,int) ; 
 int FUNC7 (struct rxdb*) ; 
 int FUNC8 (struct rxdb*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rxf_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct bdx_priv *priv, struct rxf_fifo *f)
{
	struct sk_buff *skb;
	struct rxf_desc *rxfd;
	struct rx_map *dm;
	int dno, delta, idx;
	struct rxdb *db = priv->rxdb;

	ENTER;
	dno = FUNC8(db) - 1;
	while (dno > 0) {
		skb = FUNC10(priv->ndev, f->m.pktsz + NET_IP_ALIGN);
		if (!skb)
			break;

		FUNC13(skb, NET_IP_ALIGN);

		idx = FUNC7(db);
		dm = FUNC6(db, idx);
		dm->dma = FUNC11(priv->pdev,
					 skb->data, f->m.pktsz,
					 PCI_DMA_FROMDEVICE);
		dm->skb = skb;
		rxfd = (struct rxf_desc *)(f->m.va + f->m.wptr);
		rxfd->info = FUNC0(0x10003);	/* INFO=1 BC=3 */
		rxfd->va_lo = idx;
		rxfd->pa_lo = FUNC0(FUNC3(dm->dma));
		rxfd->pa_hi = FUNC0(FUNC2(dm->dma));
		rxfd->len = FUNC0(f->m.pktsz);
		FUNC12(rxfd);

		f->m.wptr += sizeof(struct rxf_desc);
		delta = f->m.wptr - f->m.memsz;
		if (FUNC14(delta >= 0)) {
			f->m.wptr = delta;
			if (delta > 0) {
				FUNC9(f->m.va, f->m.va + f->m.memsz, delta);
				FUNC1("wrapped descriptor\n");
			}
		}
		dno--;
	}
	/*TBD: to do - delayed rxf wptr like in txd */
	FUNC5(priv, f->m.reg_WPTR, f->m.wptr & TXF_WPTR_WR_PTR);
	FUNC4();
}