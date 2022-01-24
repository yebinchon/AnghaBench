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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct hix5hd2_desc* desc; } ;
struct hix5hd2_priv {scalar_t__ base; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; TYPE_1__ rx_bq; struct sk_buff** rx_skb; } ;
struct hix5hd2_desc {int /*<<< orphan*/  buff_addr; int /*<<< orphan*/  cmd; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int DESC_DATA_LEN_OFF ; 
 int DESC_DATA_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ MAC_MAX_FRAME_SIZE ; 
 scalar_t__ RX_BQ_RD_ADDR ; 
 scalar_t__ RX_BQ_WR_ADDR ; 
 int /*<<< orphan*/  RX_DESC_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hix5hd2_priv*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 struct hix5hd2_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev, int limit)
{
	struct hix5hd2_priv *priv = FUNC11(dev);
	struct sk_buff *skb;
	struct hix5hd2_desc *desc;
	dma_addr_t addr;
	u32 start, end, num, pos, i, len;

	/* software read pointer */
	start = FUNC3(FUNC12(priv->base + RX_BQ_RD_ADDR));
	/* logic write pointer */
	end = FUNC3(FUNC12(priv->base + RX_BQ_WR_ADDR));
	num = FUNC0(end, start, RX_DESC_NUM);
	if (num > limit)
		num = limit;

	/* ensure get updated desc */
	FUNC13();
	for (i = 0, pos = start; i < num; i++) {
		skb = priv->rx_skb[pos];
		if (FUNC15(!skb)) {
			FUNC10(dev, "inconsistent rx_skb\n");
			break;
		}
		priv->rx_skb[pos] = NULL;

		desc = priv->rx_bq.desc + pos;
		len = (FUNC8(desc->cmd) >> DESC_DATA_LEN_OFF) &
		       DESC_DATA_MASK;
		addr = FUNC8(desc->buff_addr);
		FUNC5(priv->dev, addr, MAC_MAX_FRAME_SIZE,
				 DMA_FROM_DEVICE);

		FUNC14(skb, len);
		if (skb->len > MAC_MAX_FRAME_SIZE) {
			FUNC10(dev, "rcv len err, len = %d\n", skb->len);
			dev->stats.rx_errors++;
			dev->stats.rx_length_errors++;
			FUNC1(skb);
			goto next;
		}

		skb->protocol = FUNC6(skb, dev);
		FUNC9(&priv->napi, skb);
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += skb->len;
next:
		pos = FUNC4(pos, RX_DESC_NUM);
	}

	if (pos != start)
		FUNC16(FUNC2(pos), priv->base + RX_BQ_RD_ADDR);

	FUNC7(priv);

	return num;
}