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
struct ipw2100_rx {int dummy; } ;
struct ipw2100_priv {TYPE_1__* rx_buffers; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  rx_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb; int /*<<< orphan*/  dma_addr; scalar_t__ rxp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw2100_priv*) ; 

__attribute__((used)) static void FUNC6(struct ipw2100_priv *priv)
{
	int i;

	FUNC0("enter\n");

	FUNC1(priv, &priv->rx_queue);
	FUNC5(priv);

	if (!priv->rx_buffers)
		return;

	for (i = 0; i < RX_QUEUE_LENGTH; i++) {
		if (priv->rx_buffers[i].rxp) {
			FUNC4(priv->pci_dev,
					 priv->rx_buffers[i].dma_addr,
					 sizeof(struct ipw2100_rx),
					 PCI_DMA_FROMDEVICE);
			FUNC2(priv->rx_buffers[i].skb);
		}
	}

	FUNC3(priv->rx_buffers);
	priv->rx_buffers = NULL;

	FUNC0("exit\n");
}