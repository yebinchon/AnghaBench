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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data_len; int /*<<< orphan*/  truesize; struct sk_buff* next; } ;
struct hns3_enet_ring {int next_to_clean; int desc_num; scalar_t__ frag_num; int /*<<< orphan*/  pending_buf; struct sk_buff* tail_skb; TYPE_1__* tqp_vector; struct hns3_desc_cb* desc_cb; struct hns3_desc* desc; } ;
struct hns3_desc_cb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bd_base_info; } ;
struct hns3_desc {TYPE_2__ rx; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {struct sk_buff* frag_list; } ;
struct TYPE_5__ {TYPE_4__ napi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  HNS3_RXD_FE_B ; 
 int /*<<< orphan*/  HNS3_RXD_VLD_B ; 
 int /*<<< orphan*/  HNS3_RX_HEAD_SIZE ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct hns3_enet_ring*,int /*<<< orphan*/ ,struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_to_clean ; 
 int /*<<< orphan*/  FUNC8 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct hns3_enet_ring *ring, struct hns3_desc *desc,
			 struct sk_buff **out_skb, bool pending)
{
	struct sk_buff *skb = *out_skb;
	struct sk_buff *head_skb = *out_skb;
	struct sk_buff *new_skb;
	struct hns3_desc_cb *desc_cb;
	struct hns3_desc *pre_desc;
	u32 bd_base_info;
	int pre_bd;

	/* if there is pending bd, the SW param next_to_clean has moved
	 * to next and the next is NULL
	 */
	if (pending) {
		pre_bd = (ring->next_to_clean - 1 + ring->desc_num) %
			 ring->desc_num;
		pre_desc = &ring->desc[pre_bd];
		bd_base_info = FUNC6(pre_desc->rx.bd_base_info);
	} else {
		bd_base_info = FUNC6(desc->rx.bd_base_info);
	}

	while (!(bd_base_info & FUNC0(HNS3_RXD_FE_B))) {
		desc = &ring->desc[ring->next_to_clean];
		desc_cb = &ring->desc_cb[ring->next_to_clean];
		bd_base_info = FUNC6(desc->rx.bd_base_info);
		/* make sure HW write desc complete */
		FUNC1();
		if (!(bd_base_info & FUNC0(HNS3_RXD_VLD_B)))
			return -ENXIO;

		if (FUNC10(ring->frag_num >= MAX_SKB_FRAGS)) {
			new_skb = FUNC7(&ring->tqp_vector->napi,
						 HNS3_RX_HEAD_SIZE);
			if (FUNC10(!new_skb)) {
				FUNC4(ring->tqp_vector->napi.dev,
					    "alloc rx fraglist skb fail\n");
				return -ENXIO;
			}
			ring->frag_num = 0;

			if (ring->tail_skb) {
				ring->tail_skb->next = new_skb;
				ring->tail_skb = new_skb;
			} else {
				FUNC9(skb)->frag_list = new_skb;
				ring->tail_skb = new_skb;
			}
		}

		if (ring->tail_skb) {
			head_skb->truesize += FUNC2(ring);
			head_skb->data_len += FUNC5(desc->rx.size);
			head_skb->len += FUNC5(desc->rx.size);
			skb = ring->tail_skb;
		}

		FUNC3(skb, ring->frag_num++, ring, 0, desc_cb);
		FUNC8(ring, next_to_clean);
		ring->pending_buf++;
	}

	return 0;
}