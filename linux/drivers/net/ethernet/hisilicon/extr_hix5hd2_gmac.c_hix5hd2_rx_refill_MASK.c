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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct hix5hd2_desc* desc; } ;
struct hix5hd2_priv {scalar_t__ base; struct sk_buff** rx_skb; TYPE_1__ rx_fq; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; } ;
struct hix5hd2_desc {void* cmd; void* buff_addr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ DESC_BUFF_LEN_OFF ; 
 scalar_t__ DESC_VLD_FREE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ MAC_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  RX_DESC_NUM ; 
 scalar_t__ RX_FQ_RD_ADDR ; 
 scalar_t__ RX_FQ_WR_ADDR ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct hix5hd2_priv *priv)
{
	struct hix5hd2_desc *desc;
	struct sk_buff *skb;
	u32 start, end, num, pos, i;
	u32 len = MAC_MAX_FRAME_SIZE;
	dma_addr_t addr;

	/* software write pointer */
	start = FUNC4(FUNC9(priv->base + RX_FQ_WR_ADDR));
	/* logic read pointer */
	end = FUNC4(FUNC9(priv->base + RX_FQ_RD_ADDR));
	num = FUNC0(start, end, RX_DESC_NUM);

	for (i = 0, pos = start; i < num; i++) {
		if (priv->rx_skb[pos]) {
			break;
		} else {
			skb = FUNC8(priv->netdev, len);
			if (FUNC10(skb == NULL))
				break;
		}

		addr = FUNC5(priv->dev, skb->data, len, DMA_FROM_DEVICE);
		if (FUNC6(priv->dev, addr)) {
			FUNC2(skb);
			break;
		}

		desc = priv->rx_fq.desc + pos;
		desc->buff_addr = FUNC1(addr);
		priv->rx_skb[pos] = skb;
		desc->cmd = FUNC1(DESC_VLD_FREE |
					(len - 1) << DESC_BUFF_LEN_OFF);
		pos = FUNC7(pos, RX_DESC_NUM);
	}

	/* ensure desc updated */
	FUNC11();

	if (pos != start)
		FUNC12(FUNC3(pos), priv->base + RX_FQ_WR_ADDR);
}