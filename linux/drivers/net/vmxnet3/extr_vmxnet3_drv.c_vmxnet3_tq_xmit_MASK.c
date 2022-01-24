#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ hlen; int msscof; int ti; int /*<<< orphan*/  addr; int /*<<< orphan*/  tci; scalar_t__ om; } ;
union Vmxnet3_GenericDesc {void** dword; TYPE_4__ txd; } ;
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  drop_total; int /*<<< orphan*/  tx_ring_full; int /*<<< orphan*/  drop_hdr_inspect_err; int /*<<< orphan*/  drop_oversized_hdr; int /*<<< orphan*/  linearized; int /*<<< orphan*/  drop_too_many_frags; int /*<<< orphan*/  copy_skb_header; int /*<<< orphan*/  drop_tso; } ;
struct TYPE_12__ {int /*<<< orphan*/  next2fill; union Vmxnet3_GenericDesc* base; int /*<<< orphan*/  next2comp; } ;
struct vmxnet3_tx_queue {int qid; TYPE_1__ stats; int /*<<< orphan*/  tx_lock; TYPE_5__ tx_ring; TYPE_3__* shared; } ;
struct vmxnet3_tx_ctx {int ipv4; int ipv6; int mss; scalar_t__ copy_size; scalar_t__ eth_ip_hdr_size; scalar_t__ l4_hdr_size; union Vmxnet3_GenericDesc* sop_txd; TYPE_2__* eop_txd; } ;
struct vmxnet3_adapter {TYPE_7__* netdev; int /*<<< orphan*/  pdev; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; int len; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int gso_size; } ;
struct TYPE_10__ {void* txNumDeferred; void* txThreshold; } ;
struct TYPE_9__ {void** dword; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ VMXNET3_MAX_CSUM_OFFSET ; 
 scalar_t__ VMXNET3_MAX_TXD_PER_PKT ; 
 scalar_t__ VMXNET3_MAX_TX_BUF_SIZE ; 
 scalar_t__ VMXNET3_OM_CSUM ; 
 scalar_t__ VMXNET3_OM_TSO ; 
 scalar_t__ VMXNET3_REG_TXPROD ; 
 int VMXNET3_TXD_CQ ; 
 int VMXNET3_TXD_EOP ; 
 int VMXNET3_TXD_GEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void**,int) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,char*,scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 TYPE_6__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct Vmxnet3_TxDesc*,struct Vmxnet3_TxDesc*) ; 
 scalar_t__ FUNC24 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct vmxnet3_tx_queue*,struct vmxnet3_tx_ctx*,struct vmxnet3_adapter*) ; 
 scalar_t__ FUNC26 (struct sk_buff*,struct vmxnet3_tx_ctx*,struct vmxnet3_tx_queue*,int /*<<< orphan*/ ,struct vmxnet3_adapter*) ; 
 int FUNC27 (struct sk_buff*,struct vmxnet3_tx_queue*,struct vmxnet3_tx_ctx*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,struct vmxnet3_tx_ctx*) ; 
 int /*<<< orphan*/  FUNC29 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC30(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
		struct vmxnet3_adapter *adapter, struct net_device *netdev)
{
	int ret;
	u32 count;
	int num_pkts;
	int tx_num_deferred;
	unsigned long flags;
	struct vmxnet3_tx_ctx ctx;
	union Vmxnet3_GenericDesc *gdesc;
#ifdef __BIG_ENDIAN_BITFIELD
	/* Use temporary descriptor to avoid touching bits multiple times */
	union Vmxnet3_GenericDesc tempTxDesc;
#endif

	count = FUNC20(skb);

	ctx.ipv4 = (FUNC22(skb) == FUNC3(ETH_P_IP));
	ctx.ipv6 = (FUNC22(skb) == FUNC3(ETH_P_IPV6));

	ctx.mss = FUNC15(skb)->gso_size;
	if (ctx.mss) {
		if (FUNC12(skb)) {
			if (FUNC21(FUNC11(skb, 0, 0,
						      GFP_ATOMIC) != 0)) {
				tq->stats.drop_tso++;
				goto drop_pkt;
			}
			tq->stats.copy_skb_header++;
		}
		FUNC28(skb, &ctx);
	} else {
		if (FUNC21(count > VMXNET3_MAX_TXD_PER_PKT)) {

			/* non-tso pkts must not use more than
			 * VMXNET3_MAX_TXD_PER_PKT entries
			 */
			if (FUNC14(skb) != 0) {
				tq->stats.drop_too_many_frags++;
				goto drop_pkt;
			}
			tq->stats.linearized++;

			/* recalculate the # of descriptors to use */
			count = FUNC1(FUNC13(skb)) + 1;
		}
	}

	ret = FUNC27(skb, tq, &ctx, adapter);
	if (ret >= 0) {
		FUNC0(ret <= 0 && ctx.copy_size != 0);
		/* hdrs parsed, check against other limits */
		if (ctx.mss) {
			if (FUNC21(ctx.eth_ip_hdr_size + ctx.l4_hdr_size >
				     VMXNET3_MAX_TX_BUF_SIZE)) {
				tq->stats.drop_oversized_hdr++;
				goto drop_pkt;
			}
		} else {
			if (skb->ip_summed == CHECKSUM_PARTIAL) {
				if (FUNC21(ctx.eth_ip_hdr_size +
					     skb->csum_offset >
					     VMXNET3_MAX_CSUM_OFFSET)) {
					tq->stats.drop_oversized_hdr++;
					goto drop_pkt;
				}
			}
		}
	} else {
		tq->stats.drop_hdr_inspect_err++;
		goto drop_pkt;
	}

	FUNC18(&tq->tx_lock, flags);

	if (count > FUNC24(&tq->tx_ring)) {
		tq->stats.tx_ring_full++;
		FUNC10(adapter->netdev,
			"tx queue stopped on %s, next2comp %u"
			" next2fill %u\n", adapter->netdev->name,
			tq->tx_ring.next2comp, tq->tx_ring.next2fill);

		FUNC29(tq, adapter);
		FUNC19(&tq->tx_lock, flags);
		return NETDEV_TX_BUSY;
	}


	FUNC25(skb, tq, &ctx, adapter);

	/* fill tx descs related to addr & len */
	if (FUNC26(skb, &ctx, tq, adapter->pdev, adapter))
		goto unlock_drop_pkt;

	/* setup the EOP desc */
	ctx.eop_txd->dword[3] = FUNC4(VMXNET3_TXD_CQ | VMXNET3_TXD_EOP);

	/* setup the SOP desc */
#ifdef __BIG_ENDIAN_BITFIELD
	gdesc = &tempTxDesc;
	gdesc->dword[2] = ctx.sop_txd->dword[2];
	gdesc->dword[3] = ctx.sop_txd->dword[3];
#else
	gdesc = ctx.sop_txd;
#endif
	tx_num_deferred = FUNC8(tq->shared->txNumDeferred);
	if (ctx.mss) {
		gdesc->txd.hlen = ctx.eth_ip_hdr_size + ctx.l4_hdr_size;
		gdesc->txd.om = VMXNET3_OM_TSO;
		gdesc->txd.msscof = ctx.mss;
		num_pkts = (skb->len - gdesc->txd.hlen + ctx.mss - 1) / ctx.mss;
	} else {
		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			gdesc->txd.hlen = ctx.eth_ip_hdr_size;
			gdesc->txd.om = VMXNET3_OM_CSUM;
			gdesc->txd.msscof = ctx.eth_ip_hdr_size +
					    skb->csum_offset;
		} else {
			gdesc->txd.om = 0;
			gdesc->txd.msscof = 0;
		}
		num_pkts = 1;
	}
	FUNC7(&tq->shared->txNumDeferred, num_pkts);
	tx_num_deferred += num_pkts;

	if (FUNC17(skb)) {
		gdesc->txd.ti = 1;
		gdesc->txd.tci = FUNC16(skb);
	}

	/* Ensure that the write to (&gdesc->txd)->gen will be observed after
	 * all other writes to &gdesc->txd.
	 */
	FUNC6();

	/* finally flips the GEN bit of the SOP desc. */
	gdesc->dword[2] = FUNC4(FUNC8(gdesc->dword[2]) ^
						  VMXNET3_TXD_GEN);
#ifdef __BIG_ENDIAN_BITFIELD
	/* Finished updating in bitfields of Tx Desc, so write them in original
	 * place.
	 */
	vmxnet3_TxDescToLe((struct Vmxnet3_TxDesc *)gdesc,
			   (struct Vmxnet3_TxDesc *)ctx.sop_txd);
	gdesc = ctx.sop_txd;
#endif
	FUNC10(adapter->netdev,
		"txd[%u]: SOP 0x%Lx 0x%x 0x%x\n",
		(u32)(ctx.sop_txd -
		tq->tx_ring.base), FUNC9(gdesc->txd.addr),
		FUNC8(gdesc->dword[2]), FUNC8(gdesc->dword[3]));

	FUNC19(&tq->tx_lock, flags);

	if (tx_num_deferred >= FUNC8(tq->shared->txThreshold)) {
		tq->shared->txNumDeferred = 0;
		FUNC2(adapter,
				       VMXNET3_REG_TXPROD + tq->qid * 8,
				       tq->tx_ring.next2fill);
	}

	return NETDEV_TX_OK;

unlock_drop_pkt:
	FUNC19(&tq->tx_lock, flags);
drop_pkt:
	tq->stats.drop_total++;
	FUNC5(skb);
	return NETDEV_TX_OK;
}