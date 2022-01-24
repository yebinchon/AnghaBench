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
typedef  int u16 ;
struct ucc_hdlc_private {size_t skb_dirtytx; struct qe_bd* dirty_tx; struct qe_bd* tx_bd_base; struct sk_buff** tx_skbuff; scalar_t__ dma_tx_addr; scalar_t__ tx_buffer; struct net_device* ndev; } ;
struct sk_buff {scalar_t__ len; } ;
struct qe_bd {int /*<<< orphan*/  status; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_BD_RING_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int T_CT_S ; 
 int T_R_S ; 
 int T_UN_S ; 
 int T_W_S ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucc_hdlc_private*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,unsigned int) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct ucc_hdlc_private *priv)
{
	/* Start from the next BD that should be filled */
	struct net_device *dev = priv->ndev;
	unsigned int bytes_sent = 0;
	int howmany = 0;
	struct qe_bd *bd;		/* BD pointer */
	u16 bd_status;
	int tx_restart = 0;

	bd = priv->dirty_tx;
	bd_status = FUNC4(&bd->status);

	/* Normal processing. */
	while ((bd_status & T_R_S) == 0) {
		struct sk_buff *skb;

		if (bd_status & T_UN_S) { /* Underrun */
			dev->stats.tx_fifo_errors++;
			tx_restart = 1;
		}
		if (bd_status & T_CT_S) { /* Carrier lost */
			dev->stats.tx_carrier_errors++;
			tx_restart = 1;
		}

		/* BD contains already transmitted buffer.   */
		/* Handle the transmitted buffer and release */
		/* the BD to be used with the current frame  */

		skb = priv->tx_skbuff[priv->skb_dirtytx];
		if (!skb)
			break;
		howmany++;
		bytes_sent += skb->len;
		dev->stats.tx_packets++;
		FUNC5(priv->tx_buffer +
		       (FUNC1(bd->buf) - priv->dma_tx_addr),
		       0, skb->len);
		FUNC2(skb);

		priv->tx_skbuff[priv->skb_dirtytx] = NULL;
		priv->skb_dirtytx =
		    (priv->skb_dirtytx +
		     1) & FUNC0(TX_BD_RING_LEN);

		/* We freed a buffer, so now we can restart transmission */
		if (FUNC7(dev))
			FUNC8(dev);

		/* Advance the confirmation BD pointer */
		if (!(bd_status & T_W_S))
			bd += 1;
		else
			bd = priv->tx_bd_base;
		bd_status = FUNC4(&bd->status);
	}
	priv->dirty_tx = bd;

	if (tx_restart)
		FUNC3(priv);

	FUNC6(dev, howmany, bytes_sent);
	return 0;
}