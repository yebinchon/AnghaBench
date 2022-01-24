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
struct sk_buff {int len; int data_len; int truesize; int /*<<< orphan*/  ip_summed; } ;
struct sge_qset {int nomem; int /*<<< orphan*/  napi; int /*<<< orphan*/ * port_stats; struct cpl_rx_pkt* lro_va; TYPE_5__* netdev; } ;
struct TYPE_6__ {scalar_t__ page; } ;
struct sge_fl {size_t cidx; int /*<<< orphan*/  alloc_size; TYPE_1__ pg_chunk; scalar_t__ buf_size; int /*<<< orphan*/  credits; struct rx_sw_desc* sdesc; } ;
struct TYPE_7__ {scalar_t__ page; int offset; struct cpl_rx_pkt* va; int /*<<< orphan*/  mapping; int /*<<< orphan*/ * p_cnt; } ;
struct rx_sw_desc {TYPE_2__ pg_chunk; } ;
struct port_info {size_t first_qset; } ;
struct cpl_rx_pkt {scalar_t__ csum; int /*<<< orphan*/  vlan; scalar_t__ vlan_valid; scalar_t__ csum_valid; } ;
struct TYPE_8__ {struct sge_qset* qs; } ;
struct adapter {TYPE_3__ sge; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_10__ {int features; } ;
struct TYPE_9__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int ETH_P_8021Q ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ SGE_PG_RSVD ; 
 size_t SGE_PSTAT_RX_CSUM_GOOD ; 
 size_t SGE_PSTAT_VLANEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC2 (struct rx_sw_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 TYPE_4__* FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC15(struct adapter *adap, struct sge_qset *qs,
			 struct sge_fl *fl, int len, int complete)
{
	struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];
	struct port_info *pi = FUNC6(qs->netdev);
	struct sk_buff *skb = NULL;
	struct cpl_rx_pkt *cpl;
	skb_frag_t *rx_frag;
	int nr_frags;
	int offset = 0;

	if (!qs->nomem) {
		skb = FUNC4(&qs->napi);
		qs->nomem = !skb;
	}

	fl->credits--;

	FUNC8(adap->pdev,
				    FUNC2(sd, dma_addr),
				    fl->buf_size - SGE_PG_RSVD,
				    PCI_DMA_FROMDEVICE);

	(*sd->pg_chunk.p_cnt)--;
	if (!*sd->pg_chunk.p_cnt && sd->pg_chunk.page != fl->pg_chunk.page)
		FUNC9(adap->pdev,
			       sd->pg_chunk.mapping,
			       fl->alloc_size,
			       PCI_DMA_FROMDEVICE);

	if (!skb) {
		FUNC10(sd->pg_chunk.page);
		if (complete)
			qs->nomem = 0;
		return;
	}

	rx_frag = FUNC14(skb)->frags;
	nr_frags = FUNC14(skb)->nr_frags;

	if (!nr_frags) {
		offset = 2 + sizeof(struct cpl_rx_pkt);
		cpl = qs->lro_va = sd->pg_chunk.va + 2;

		if ((qs->netdev->features & NETIF_F_RXCSUM) &&
		     cpl->csum_valid && cpl->csum == FUNC3(0xffff)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			qs->port_stats[SGE_PSTAT_RX_CSUM_GOOD]++;
		} else
			skb->ip_summed = CHECKSUM_NONE;
	} else
		cpl = qs->lro_va;

	len -= offset;

	rx_frag += nr_frags;
	FUNC0(rx_frag, sd->pg_chunk.page);
	FUNC11(rx_frag, sd->pg_chunk.offset + offset);
	FUNC12(rx_frag, len);

	skb->len += len;
	skb->data_len += len;
	skb->truesize += len;
	FUNC14(skb)->nr_frags++;

	if (!complete)
		return;

	FUNC13(skb, qs - &adap->sge.qs[pi->first_qset]);

	if (cpl->vlan_valid) {
		qs->port_stats[SGE_PSTAT_VLANEX]++;
		FUNC1(skb, FUNC3(ETH_P_8021Q), FUNC7(cpl->vlan));
	}
	FUNC5(&qs->napi);
}