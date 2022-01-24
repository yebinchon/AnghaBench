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
struct vnic_wq_buf {TYPE_2__* next; struct vnic_wq_buf* prev; int /*<<< orphan*/  os_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc_avail; } ;
struct vnic_wq {TYPE_2__* to_use; TYPE_1__ ring; TYPE_2__* to_clean; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct enic {unsigned int loop_tag; scalar_t__ loop_enable; } ;
struct TYPE_6__ {unsigned int gso_size; } ;
struct TYPE_5__ {struct vnic_wq_buf* prev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq*,struct vnic_wq_buf*) ; 
 int FUNC2 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ; 
 int FUNC3 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ; 
 int FUNC4 (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int,unsigned int,int) ; 
 int FUNC5 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline void FUNC10(struct enic *enic,
	struct vnic_wq *wq, struct sk_buff *skb)
{
	unsigned int mss = FUNC6(skb)->gso_size;
	unsigned int vlan_tag = 0;
	int vlan_tag_insert = 0;
	int loopback = 0;
	int err;

	if (FUNC8(skb)) {
		/* VLAN tag from trunking driver */
		vlan_tag_insert = 1;
		vlan_tag = FUNC7(skb);
	} else if (enic->loop_enable) {
		vlan_tag = enic->loop_tag;
		loopback = 1;
	}

	if (mss)
		err = FUNC4(enic, wq, skb, mss,
					    vlan_tag_insert, vlan_tag,
					    loopback);
	else if (skb->encapsulation)
		err = FUNC3(enic, wq, skb, vlan_tag_insert,
					      vlan_tag, loopback);
	else if	(skb->ip_summed == CHECKSUM_PARTIAL)
		err = FUNC2(enic, wq, skb, vlan_tag_insert,
						vlan_tag, loopback);
	else
		err = FUNC5(enic, wq, skb, vlan_tag_insert,
					     vlan_tag, loopback);
	if (FUNC9(err)) {
		struct vnic_wq_buf *buf;

		buf = wq->to_use->prev;
		/* while not EOP of previous pkt && queue not empty.
		 * For all non EOP bufs, os_buf is NULL.
		 */
		while (!buf->os_buf && (buf->next != wq->to_clean)) {
			FUNC1(wq, buf);
			wq->ring.desc_avail++;
			buf = buf->prev;
		}
		wq->to_use = buf->next;
		FUNC0(skb);
	}
}