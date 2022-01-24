#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_ctl* next; TYPE_2__* skb; TYPE_1__* desc; } ;
struct wcn36xx_dxe_ch {int /*<<< orphan*/  lock; struct wcn36xx_dxe_ctl* tail_blk_ctl; struct wcn36xx_dxe_ctl* head_blk_ctl; } ;
struct wcn36xx {int queues_stopped; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  src_addr_l; int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct ieee80211_tx_info* FUNC0 (TYPE_2__*) ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WCN36xx_DXE_CTRL_EOP ; 
 int WCN36xx_DXE_CTRL_VLD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct wcn36xx *wcn, struct wcn36xx_dxe_ch *ch)
{
	struct wcn36xx_dxe_ctl *ctl;
	struct ieee80211_tx_info *info;
	unsigned long flags;

	/*
	 * Make at least one loop of do-while because in case ring is
	 * completely full head and tail are pointing to the same element
	 * and while-do will not make any cycles.
	 */
	FUNC5(&ch->lock, flags);
	ctl = ch->tail_blk_ctl;
	do {
		if (FUNC1(ctl->desc->ctrl) & WCN36xx_DXE_CTRL_VLD)
			break;

		if (ctl->skb &&
		    FUNC1(ctl->desc->ctrl) & WCN36xx_DXE_CTRL_EOP) {
			FUNC2(wcn->dev, ctl->desc->src_addr_l,
					 ctl->skb->len, DMA_TO_DEVICE);
			info = FUNC0(ctl->skb);
			if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS)) {
				/* Keep frame until TX status comes */
				FUNC3(wcn->hw, ctl->skb);
			}

			if (wcn->queues_stopped) {
				wcn->queues_stopped = false;
				FUNC4(wcn->hw);
			}

			ctl->skb = NULL;
		}
		ctl = ctl->next;
	} while (ctl != ch->head_blk_ctl);

	ch->tail_blk_ctl = ctl;
	FUNC6(&ch->lock, flags);
}