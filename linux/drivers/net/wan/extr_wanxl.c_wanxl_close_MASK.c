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
struct port {int node; TYPE_4__** tx_skbs; TYPE_1__* card; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ stat; int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ desc_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_2__* tx_descs; scalar_t__ open; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; scalar_t__ plx; } ;

/* Variables and functions */
 int DOORBELL_TO_CARD_CLOSE_0 ; 
 unsigned long HZ ; 
 scalar_t__ PACKET_EMPTY ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ PLX_DOORBELL_TO_CARD ; 
 int TX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 struct port* FUNC1 (struct net_device*) ; 
 TYPE_3__* FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct port *port = FUNC1(dev);
	unsigned long timeout;
	int i;

	FUNC3(dev);
	/* signal the card */
	FUNC8(1 << (DOORBELL_TO_CARD_CLOSE_0 + port->node),
	       port->card->plx + PLX_DOORBELL_TO_CARD);

	timeout = jiffies + HZ;
	do {
		if (!FUNC2(port)->open)
			break;
	} while (FUNC7(timeout, jiffies));

	if (FUNC2(port)->open)
		FUNC4(dev, "unable to close port\n");

	FUNC5(dev);

	for (i = 0; i < TX_BUFFERS; i++) {
		desc_t *desc = &FUNC2(port)->tx_descs[i];

		if (desc->stat != PACKET_EMPTY) {
			desc->stat = PACKET_EMPTY;
			FUNC6(port->card->pdev, desc->address,
					 port->tx_skbs[i]->len,
					 PCI_DMA_TODEVICE);
			FUNC0(port->tx_skbs[i]);
		}
	}
	return 0;
}