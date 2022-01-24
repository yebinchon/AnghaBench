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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  seg_pkt_cnt; int /*<<< orphan*/  sw_err_cnt; } ;
struct hns3_enet_ring {size_t next_to_clean; int pending_buf; unsigned int pull_len; scalar_t__ frag_num; int /*<<< orphan*/  syncp; TYPE_5__ stats; int /*<<< orphan*/ * tail_skb; struct sk_buff* skb; TYPE_4__* tqp_vector; TYPE_3__* tqp; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {int reuse_flag; int /*<<< orphan*/  priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  napi; } ;
struct TYPE_8__ {TYPE_2__* handle; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_7__ {TYPE_1__ kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int ENOMEM ; 
 int HNS3_NEED_ADD_FRAG ; 
 unsigned int HNS3_RX_HEAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC2 (struct net_device*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct hns3_enet_ring*,unsigned int,struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  next_to_clean ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct hns3_enet_ring *ring, unsigned int length,
			  unsigned char *va)
{
#define HNS3_NEED_ADD_FRAG	1
	struct hns3_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_clean];
	struct net_device *netdev = ring->tqp->handle->kinfo.netdev;
	struct sk_buff *skb;

	ring->skb = FUNC7(&ring->tqp_vector->napi, HNS3_RX_HEAD_SIZE);
	skb = ring->skb;
	if (FUNC15(!skb)) {
		FUNC4(netdev, "alloc rx skb fail\n");

		FUNC13(&ring->syncp);
		ring->stats.sw_err_cnt++;
		FUNC14(&ring->syncp);

		return -ENOMEM;
	}

	FUNC10(skb->data);

	ring->pending_buf = 1;
	ring->frag_num = 0;
	ring->tail_skb = NULL;
	if (length <= HNS3_RX_HEAD_SIZE) {
		FUNC6(FUNC1(skb, length), va, FUNC0(length, sizeof(long)));

		/* We can reuse buffer as-is, just make sure it is local */
		if (FUNC5(FUNC9(desc_cb->priv) == FUNC8()))
			desc_cb->reuse_flag = 1;
		else /* This page cannot be reused so discard it */
			FUNC11(desc_cb->priv);

		FUNC12(ring, next_to_clean);
		return 0;
	}
	FUNC13(&ring->syncp);
	ring->stats.seg_pkt_cnt++;
	FUNC14(&ring->syncp);

	ring->pull_len = FUNC2(netdev, va, HNS3_RX_HEAD_SIZE);
	FUNC1(skb, ring->pull_len);
	FUNC3(skb, ring->frag_num++, ring, ring->pull_len,
			    desc_cb);
	FUNC12(ring, next_to_clean);

	return HNS3_NEED_ADD_FRAG;
}