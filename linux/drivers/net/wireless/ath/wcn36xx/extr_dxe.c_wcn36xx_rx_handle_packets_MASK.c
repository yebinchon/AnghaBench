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
typedef  int u32 ;
struct wcn36xx_dxe_desc {int ctrl; int /*<<< orphan*/  dst_addr_l; } ;
struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_desc* desc; struct wcn36xx_dxe_ctl* next; struct sk_buff* skb; } ;
struct wcn36xx_dxe_ch {int /*<<< orphan*/  lock; struct wcn36xx_dxe_ctl* head_blk_ctl; } ;
struct wcn36xx {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int) ; 
 int WCN36XX_CH_STAT_INT_DONE_MASK ; 
 int WCN36XX_CH_STAT_INT_ED_MASK ; 
 int WCN36XX_CH_STAT_INT_ERR_MASK ; 
 int /*<<< orphan*/  WCN36XX_DXE_0_INT_CLR ; 
 int /*<<< orphan*/  WCN36XX_DXE_0_INT_DONE_CLR ; 
 int /*<<< orphan*/  WCN36XX_DXE_0_INT_ED_CLR ; 
 int /*<<< orphan*/  WCN36XX_DXE_0_INT_ERR_CLR ; 
 int /*<<< orphan*/  WCN36XX_DXE_ENCH_ADDR ; 
 int /*<<< orphan*/  WCN36XX_PKT_SIZE ; 
 int WCN36xx_DXE_CTRL_VLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct wcn36xx_dxe_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wcn36xx*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wcn36xx*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct wcn36xx *wcn,
				     struct wcn36xx_dxe_ch *ch,
				     u32 ctrl,
				     u32 en_mask,
				     u32 int_mask,
				     u32 status_reg)
{
	struct wcn36xx_dxe_desc *dxe;
	struct wcn36xx_dxe_ctl *ctl;
	dma_addr_t  dma_addr;
	struct sk_buff *skb;
	u32 int_reason;
	int ret;

	FUNC5(wcn, status_reg, &int_reason);
	FUNC6(wcn, WCN36XX_DXE_0_INT_CLR, int_mask);

	if (int_reason & WCN36XX_CH_STAT_INT_ERR_MASK) {
		FUNC6(wcn,
					   WCN36XX_DXE_0_INT_ERR_CLR,
					   int_mask);

		FUNC7("DXE IRQ reported error on RX channel\n");
	}

	if (int_reason & WCN36XX_CH_STAT_INT_DONE_MASK)
		FUNC6(wcn,
					   WCN36XX_DXE_0_INT_DONE_CLR,
					   int_mask);

	if (int_reason & WCN36XX_CH_STAT_INT_ED_MASK)
		FUNC6(wcn,
					   WCN36XX_DXE_0_INT_ED_CLR,
					   int_mask);

	if (!(int_reason & (WCN36XX_CH_STAT_INT_DONE_MASK |
			    WCN36XX_CH_STAT_INT_ED_MASK)))
		return 0;

	FUNC2(&ch->lock);

	ctl = ch->head_blk_ctl;
	dxe = ctl->desc;

	while (!(FUNC0(dxe->ctrl) & WCN36xx_DXE_CTRL_VLD)) {
		skb = ctl->skb;
		dma_addr = dxe->dst_addr_l;
		ret = FUNC4(wcn->dev, ctl, GFP_ATOMIC);
		if (0 == ret) {
			/* new skb allocation ok. Use the new one and queue
			 * the old one to network system.
			 */
			FUNC1(wcn->dev, dma_addr, WCN36XX_PKT_SIZE,
					DMA_FROM_DEVICE);
			FUNC8(wcn, skb);
		} /* else keep old skb not submitted and use it for rx DMA */

		dxe->ctrl = ctrl;
		ctl = ctl->next;
		dxe = ctl->desc;
	}
	FUNC6(wcn, WCN36XX_DXE_ENCH_ADDR, en_mask);

	ch->head_blk_ctl = ctl;

	FUNC3(&ch->lock);

	return 0;
}