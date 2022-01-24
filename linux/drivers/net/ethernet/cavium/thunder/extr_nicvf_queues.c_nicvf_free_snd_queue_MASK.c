#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sq_hdr_subdesc {size_t rsvd2; int /*<<< orphan*/  subdesc_cnt; scalar_t__ dont_send; } ;
struct TYPE_4__ {int q_len; int /*<<< orphan*/  base; } ;
struct snd_queue {size_t head; size_t tail; TYPE_2__ dmem; scalar_t__* xdp_page; scalar_t__* skbuff; int /*<<< orphan*/ * tso_hdrs; int /*<<< orphan*/  tso_hdrs_phys; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_queue*,size_t) ; 
 int TSO_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*,struct snd_queue*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct nicvf *nic, struct snd_queue *sq)
{
	struct sk_buff *skb;
	struct page *page;
	struct sq_hdr_subdesc *hdr;
	struct sq_hdr_subdesc *tso_sqe;

	if (!sq)
		return;
	if (!sq->dmem.base)
		return;

	if (sq->tso_hdrs) {
		FUNC2(&nic->pdev->dev,
				  sq->dmem.q_len * TSO_HEADER_SIZE,
				  sq->tso_hdrs, sq->tso_hdrs_phys);
		sq->tso_hdrs = NULL;
	}

	/* Free pending skbs in the queue */
	FUNC7();
	while (sq->head != sq->tail) {
		skb = (struct sk_buff *)sq->skbuff[sq->head];
		if (!skb || !sq->xdp_page)
			goto next;

		page = (struct page *)sq->xdp_page[sq->head];
		if (!page)
			goto next;
		else
			FUNC6(page);

		hdr = (struct sq_hdr_subdesc *)FUNC0(sq, sq->head);
		/* Check for dummy descriptor used for HW TSO offload on 88xx */
		if (hdr->dont_send) {
			/* Get actual TSO descriptors and unmap them */
			tso_sqe =
			 (struct sq_hdr_subdesc *)FUNC0(sq, hdr->rsvd2);
			FUNC5(nic, sq, hdr->rsvd2,
						 tso_sqe->subdesc_cnt);
		} else {
			FUNC5(nic, sq, sq->head,
						 hdr->subdesc_cnt);
		}
		if (skb)
			FUNC1(skb);
next:
		sq->head++;
		sq->head &= (sq->dmem.q_len - 1);
	}
	FUNC3(sq->skbuff);
	FUNC3(sq->xdp_page);
	FUNC4(nic, &sq->dmem);
}