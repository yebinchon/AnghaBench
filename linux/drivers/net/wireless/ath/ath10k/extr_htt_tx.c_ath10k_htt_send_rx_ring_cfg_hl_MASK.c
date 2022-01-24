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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct htt_rx_ring_setup_ring32 {void* flags; void* rx_ring_bufsize; void* rx_ring_len; } ;
struct TYPE_5__ {int num_rings; } ;
struct TYPE_6__ {TYPE_2__ hdr; struct htt_rx_ring_setup_ring32* rings; } ;
struct TYPE_4__ {int /*<<< orphan*/  msg_type; } ;
struct htt_cmd {TYPE_3__ rx_setup_32; TYPE_1__ hdr; } ;
struct ath10k_htt {int /*<<< orphan*/  eid; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  htc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HTT_H2T_MSG_TYPE_RX_RING_CFG ; 
 int HTT_MAX_CACHE_LINE_SIZE_MASK ; 
 int HTT_RX_BUF_SIZE ; 
 int HTT_RX_RING_FLAGS_MSDU_PAYLOAD ; 
 int HTT_RX_RING_FLAGS_MULTICAST_RX ; 
 int HTT_RX_RING_FLAGS_UNICAST_RX ; 
 int HTT_RX_RING_SIZE_MIN ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 void* FUNC2 (int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct htt_rx_ring_setup_ring32*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	struct sk_buff *skb;
	struct htt_cmd *cmd;
	struct htt_rx_ring_setup_ring32 *ring;
	const int num_rx_ring = 1;
	u16 flags;
	int len;
	int ret;

	/*
	 * the HW expects the buffer to be an integral number of 4-byte
	 * "words"
	 */
	FUNC0(!FUNC1(HTT_RX_BUF_SIZE, 4));
	FUNC0((HTT_RX_BUF_SIZE & HTT_MAX_CACHE_LINE_SIZE_MASK) != 0);

	len = sizeof(cmd->hdr) + sizeof(cmd->rx_setup_32.hdr)
	    + (sizeof(*ring) * num_rx_ring);
	skb = FUNC3(ar, len);
	if (!skb)
		return -ENOMEM;

	FUNC7(skb, len);

	cmd = (struct htt_cmd *)skb->data;
	ring = &cmd->rx_setup_32.rings[0];

	cmd->hdr.msg_type = HTT_H2T_MSG_TYPE_RX_RING_CFG;
	cmd->rx_setup_32.hdr.num_rings = 1;

	flags = 0;
	flags |= HTT_RX_RING_FLAGS_MSDU_PAYLOAD;
	flags |= HTT_RX_RING_FLAGS_UNICAST_RX;
	flags |= HTT_RX_RING_FLAGS_MULTICAST_RX;

	FUNC6(ring, 0, sizeof(*ring));
	ring->rx_ring_len = FUNC2(HTT_RX_RING_SIZE_MIN);
	ring->rx_ring_bufsize = FUNC2(HTT_RX_BUF_SIZE);
	ring->flags = FUNC2(flags);

	ret = FUNC4(&htt->ar->htc, htt->eid, skb);
	if (ret) {
		FUNC5(skb);
		return ret;
	}

	return 0;
}