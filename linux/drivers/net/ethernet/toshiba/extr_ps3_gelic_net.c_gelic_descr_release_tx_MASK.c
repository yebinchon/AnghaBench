#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct gelic_descr {struct sk_buff* skb; scalar_t__ data_error; scalar_t__ data_status; scalar_t__ valid_size; scalar_t__ result_size; scalar_t__ next_descr_addr; scalar_t__ buf_size; scalar_t__ buf_addr; } ;
struct gelic_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GELIC_DESCR_DMA_NOT_IN_USE ; 
 int GELIC_DESCR_TX_TAIL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gelic_descr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gelic_card *card,
				       struct gelic_descr *descr)
{
	struct sk_buff *skb = descr->skb;

	FUNC0(!(FUNC1(descr->data_status) & GELIC_DESCR_TX_TAIL));

	FUNC4(FUNC2(card), FUNC1(descr->buf_addr), skb->len,
			 DMA_TO_DEVICE);
	FUNC3(skb);

	descr->buf_addr = 0;
	descr->buf_size = 0;
	descr->next_descr_addr = 0;
	descr->result_size = 0;
	descr->valid_size = 0;
	descr->data_status = 0;
	descr->data_error = 0;
	descr->skb = NULL;

	/* set descr status */
	FUNC5(descr, GELIC_DESCR_DMA_NOT_IN_USE);
}