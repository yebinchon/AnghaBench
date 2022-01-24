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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ucc_hdlc_private {int currx_bdnum; struct qe_bd* currx_bd; struct qe_bd* rx_bd_base; int /*<<< orphan*/ * rx_buffer; struct net_device* ndev; } ;
struct sk_buff {int len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; struct net_device* dev; } ;
struct qe_bd {int /*<<< orphan*/  status; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int type; TYPE_1__ stats; } ;
struct TYPE_5__ {scalar_t__ proto; } ;
typedef  TYPE_2__ hdlc_device ;

/* Variables and functions */
#define  ARPHRD_ETHER 130 
#define  ARPHRD_PPP 129 
#define  ARPHRD_RAWHDLC 128 
 int ENOMEM ; 
 int HDLC_CRC_SIZE ; 
 int HDLC_HEAD_LEN ; 
 int MAX_RX_BUF_LENGTH ; 
 int RX_BD_ERRORS ; 
 int RX_BD_RING_LEN ; 
 int R_AB_S ; 
 int R_CD_S ; 
 int R_CR_S ; 
 int R_E_S ; 
 int R_I_S ; 
 int R_LG_S ; 
 int R_NO_S ; 
 int R_OV_S ; 
 int R_W_S ; 
 struct sk_buff* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct ucc_hdlc_private *priv, int rx_work_limit)
{
	struct net_device *dev = priv->ndev;
	struct sk_buff *skb = NULL;
	hdlc_device *hdlc = FUNC1(dev);
	struct qe_bd *bd;
	u16 bd_status;
	u16 length, howmany = 0;
	u8 *bdbuffer;

	bd = priv->currx_bd;
	bd_status = FUNC3(&bd->status);

	/* while there are received buffers and BD is full (~R_E) */
	while (!((bd_status & (R_E_S)) || (--rx_work_limit < 0))) {
		if (bd_status & (RX_BD_ERRORS)) {
			dev->stats.rx_errors++;

			if (bd_status & R_CD_S)
				dev->stats.collisions++;
			if (bd_status & R_OV_S)
				dev->stats.rx_fifo_errors++;
			if (bd_status & R_CR_S)
				dev->stats.rx_crc_errors++;
			if (bd_status & R_AB_S)
				dev->stats.rx_over_errors++;
			if (bd_status & R_NO_S)
				dev->stats.rx_frame_errors++;
			if (bd_status & R_LG_S)
				dev->stats.rx_length_errors++;

			goto recycle;
		}
		bdbuffer = priv->rx_buffer +
			(priv->currx_bdnum * MAX_RX_BUF_LENGTH);
		length = FUNC3(&bd->length);

		switch (dev->type) {
		case ARPHRD_RAWHDLC:
			bdbuffer += HDLC_HEAD_LEN;
			length -= (HDLC_HEAD_LEN + HDLC_CRC_SIZE);

			skb = FUNC0(length);
			if (!skb) {
				dev->stats.rx_dropped++;
				return -ENOMEM;
			}

			FUNC7(skb, length);
			skb->len = length;
			skb->dev = dev;
			FUNC5(skb->data, bdbuffer, length);
			break;

		case ARPHRD_PPP:
		case ARPHRD_ETHER:
			length -= HDLC_CRC_SIZE;

			skb = FUNC0(length);
			if (!skb) {
				dev->stats.rx_dropped++;
				return -ENOMEM;
			}

			FUNC7(skb, length);
			skb->len = length;
			skb->dev = dev;
			FUNC5(skb->data, bdbuffer, length);
			break;
		}

		dev->stats.rx_packets++;
		dev->stats.rx_bytes += skb->len;
		howmany++;
		if (hdlc->proto)
			skb->protocol = FUNC2(skb, dev);
		FUNC6(skb);

recycle:
		FUNC4((bd_status & R_W_S) | R_E_S | R_I_S, &bd->status);

		/* update to point at the next bd */
		if (bd_status & R_W_S) {
			priv->currx_bdnum = 0;
			bd = priv->rx_bd_base;
		} else {
			if (priv->currx_bdnum < (RX_BD_RING_LEN - 1))
				priv->currx_bdnum += 1;
			else
				priv->currx_bdnum = RX_BD_RING_LEN - 1;

			bd += 1;
		}

		bd_status = FUNC3(&bd->status);
	}

	priv->currx_bd = bd;
	return howmany;
}