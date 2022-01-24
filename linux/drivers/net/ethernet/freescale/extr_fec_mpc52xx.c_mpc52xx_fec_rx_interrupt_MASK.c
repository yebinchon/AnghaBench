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
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_dmatsk; } ;
struct bcom_fec_bd {int skb_pa; } ;
struct bcom_bd {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BCOM_FEC_RX_BD_ERRORS ; 
 int BCOM_FEC_RX_BD_LEN_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FEC_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int*,struct bcom_bd**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct mpc52xx_fec_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct mpc52xx_fec_priv *priv = FUNC7(dev);
	struct sk_buff *rskb; /* received sk_buff */
	struct sk_buff *skb;  /* new sk_buff to enqueue in its place */
	struct bcom_fec_bd *bd;
	u32 status, physaddr;
	int length;

	FUNC11(&priv->lock);

	while (FUNC0(priv->rx_dmatsk)) {

		rskb = FUNC1(priv->rx_dmatsk, &status,
					    (struct bcom_bd **)&bd);
		physaddr = bd->skb_pa;

		/* Test for errors in received frame */
		if (status & BCOM_FEC_RX_BD_ERRORS) {
			/* Drop packet and reuse the buffer */
			FUNC5(dev, rskb);
			dev->stats.rx_dropped++;
			continue;
		}

		/* skbs are allocated on open, so now we allocate a new one,
		 * and remove the old (with the packet) */
		skb = FUNC6(dev, FEC_RX_BUFFER_SIZE);
		if (!skb) {
			/* Can't get a new one : reuse the same & drop pkt */
			FUNC2(&dev->dev, "Low memory - dropped packet.\n");
			FUNC5(dev, rskb);
			dev->stats.rx_dropped++;
			continue;
		}

		/* Enqueue the new sk_buff back on the hardware */
		FUNC5(dev, skb);

		/* Process the received skb - Drop the spin lock while
		 * calling into the network stack */
		FUNC12(&priv->lock);

		FUNC3(dev->dev.parent, physaddr, rskb->len,
				 DMA_FROM_DEVICE);
		length = status & BCOM_FEC_RX_BD_LEN_MASK;
		FUNC10(rskb, length - 4);	/* length without CRC32 */
		rskb->protocol = FUNC4(rskb, dev);
		if (!FUNC9(rskb))
			FUNC8(rskb);

		FUNC11(&priv->lock);
	}

	FUNC12(&priv->lock);

	return IRQ_HANDLED;
}