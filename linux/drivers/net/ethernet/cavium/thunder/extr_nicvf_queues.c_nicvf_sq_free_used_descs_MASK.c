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
typedef  int u64 ;
struct sq_hdr_subdesc {scalar_t__ subdesc_type; int tot_len; int subdesc_cnt; } ;
struct snd_queue {int head; scalar_t__* skbuff; } ;
struct sk_buff {int dummy; } ;
struct nicvf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_queue*,int) ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_HEAD ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_TAIL ; 
 scalar_t__ SQ_DESC_TYPE_HEADER ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nicvf* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_queue*,int) ; 
 int FUNC5 (struct nicvf*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *netdev, struct snd_queue *sq,
			      int qidx)
{
	u64 head, tail;
	struct sk_buff *skb;
	struct nicvf *nic = FUNC3(netdev);
	struct sq_hdr_subdesc *hdr;

	head = FUNC5(nic, NIC_QSET_SQ_0_7_HEAD, qidx) >> 4;
	tail = FUNC5(nic, NIC_QSET_SQ_0_7_TAIL, qidx) >> 4;
	while (sq->head != head) {
		hdr = (struct sq_hdr_subdesc *)FUNC0(sq, sq->head);
		if (hdr->subdesc_type != SQ_DESC_TYPE_HEADER) {
			FUNC4(sq, 1);
			continue;
		}
		skb = (struct sk_buff *)sq->skbuff[sq->head];
		if (skb)
			FUNC2(skb);
		FUNC1(1, (atomic64_t *)&netdev->stats.tx_packets);
		FUNC1(hdr->tot_len,
			     (atomic64_t *)&netdev->stats.tx_bytes);
		FUNC4(sq, hdr->subdesc_cnt + 1);
	}
}