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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct hix5hd2_desc* desc; } ;
struct hix5hd2_priv {int /*<<< orphan*/  netdev; scalar_t__ base; struct sk_buff** tx_skb; int /*<<< orphan*/  dev; TYPE_1__ tx_rq; } ;
struct hix5hd2_desc {int /*<<< orphan*/  buff_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  TX_DESC_NUM ; 
 scalar_t__ TX_RQ_RD_ADDR ; 
 scalar_t__ TX_RQ_WR_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hix5hd2_priv*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct hix5hd2_priv* FUNC10 (struct net_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC19(struct net_device *dev)
{
	struct sk_buff *skb;
	struct hix5hd2_desc *desc;
	struct hix5hd2_priv *priv = FUNC10(dev);
	unsigned int bytes_compl = 0, pkts_compl = 0;
	u32 start, end, num, pos, i;
	dma_addr_t addr;

	FUNC12(dev);

	/* software read */
	start = FUNC3(FUNC15(priv->base + TX_RQ_RD_ADDR));
	/* logic write */
	end = FUNC3(FUNC15(priv->base + TX_RQ_WR_ADDR));
	num = FUNC0(end, start, TX_DESC_NUM);

	for (i = 0, pos = start; i < num; i++) {
		skb = priv->tx_skb[pos];
		if (FUNC17(!skb)) {
			FUNC9(dev, "inconsistent tx_skb\n");
			break;
		}

		pkts_compl++;
		bytes_compl += skb->len;
		desc = priv->tx_rq.desc + pos;

		if (FUNC16(skb)->nr_frags) {
			FUNC6(priv, skb, pos);
		} else {
			addr = FUNC7(desc->buff_addr);
			FUNC5(priv->dev, addr, skb->len,
					 DMA_TO_DEVICE);
		}

		priv->tx_skb[pos] = NULL;
		FUNC1(skb);
		pos = FUNC4(pos, TX_DESC_NUM);
	}

	if (pos != start)
		FUNC18(FUNC2(pos), priv->base + TX_RQ_RD_ADDR);

	FUNC13(dev);

	if (pkts_compl || bytes_compl)
		FUNC8(dev, pkts_compl, bytes_compl);

	if (FUNC17(FUNC11(priv->netdev)) && pkts_compl)
		FUNC14(priv->netdev);
}