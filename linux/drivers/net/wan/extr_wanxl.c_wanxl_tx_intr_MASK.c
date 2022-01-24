#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct port {size_t tx_in; TYPE_2__* card; struct sk_buff** tx_skbs; struct net_device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {int stat; int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ desc_t ;
struct TYPE_8__ {TYPE_3__* tx_descs; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
#define  PACKET_EMPTY 130 
#define  PACKET_FULL 129 
#define  PACKET_UNDERRUN 128 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_4__* FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct port *port)
{
	struct net_device *dev = port->dev;
	while (1) {
                desc_t *desc = &FUNC1(port)->tx_descs[port->tx_in];
		struct sk_buff *skb = port->tx_skbs[port->tx_in];

		switch (desc->stat) {
		case PACKET_FULL:
		case PACKET_EMPTY:
			FUNC2(dev);
			return;

		case PACKET_UNDERRUN:
			dev->stats.tx_errors++;
			dev->stats.tx_fifo_errors++;
			break;

		default:
			dev->stats.tx_packets++;
			dev->stats.tx_bytes += skb->len;
		}
                desc->stat = PACKET_EMPTY; /* Free descriptor */
		FUNC3(port->card->pdev, desc->address, skb->len,
				 PCI_DMA_TODEVICE);
		FUNC0(skb);
                port->tx_in = (port->tx_in + 1) % TX_BUFFERS;
        }
}