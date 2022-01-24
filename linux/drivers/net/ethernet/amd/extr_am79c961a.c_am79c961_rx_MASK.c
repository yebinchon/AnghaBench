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
typedef  int u_int ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct dev_priv {int rxhdr; int rxtail; int* rxbuffer; } ;

/* Variables and functions */
 int RMD_CRC ; 
 int RMD_ENP ; 
 int RMD_ERR ; 
 int RMD_FRAM ; 
 int RMD_OWN ; 
 int RMD_STP ; 
 size_t RX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev, struct dev_priv *priv)
{
	do {
		struct sk_buff *skb;
		u_int hdraddr;
		u_int pktaddr;
		u_int status;
		int len;

		hdraddr = priv->rxhdr + (priv->rxtail << 3);
		pktaddr = priv->rxbuffer[priv->rxtail];

		status = FUNC1 (dev, hdraddr + 2);
		if (status & RMD_OWN) /* do we own it? */
			break;

		priv->rxtail ++;
		if (priv->rxtail >= RX_BUFFERS)
			priv->rxtail = 0;

		if ((status & (RMD_ERR|RMD_STP|RMD_ENP)) != (RMD_STP|RMD_ENP)) {
			FUNC2 (dev, hdraddr + 2, RMD_OWN);
			dev->stats.rx_errors++;
			if (status & RMD_ERR) {
				if (status & RMD_FRAM)
					dev->stats.rx_frame_errors++;
				if (status & RMD_CRC)
					dev->stats.rx_crc_errors++;
			} else if (status & RMD_STP)
				dev->stats.rx_length_errors++;
			continue;
		}

		len = FUNC1(dev, hdraddr + 6);
		skb = FUNC4(dev, len + 2);

		if (skb) {
			FUNC7(skb, 2);

			FUNC0(dev, pktaddr, FUNC6(skb, len), len);
			FUNC2(dev, hdraddr + 2, RMD_OWN);
			skb->protocol = FUNC3(skb, dev);
			FUNC5(skb);
			dev->stats.rx_bytes += len;
			dev->stats.rx_packets++;
		} else {
			FUNC2 (dev, hdraddr + 2, RMD_OWN);
			dev->stats.rx_dropped++;
			break;
		}
	} while (1);
}