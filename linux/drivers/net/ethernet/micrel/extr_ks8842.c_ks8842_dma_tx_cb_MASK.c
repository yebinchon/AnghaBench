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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks8842_tx_dma_ctl {int /*<<< orphan*/ * adesc; } ;
struct ks8842_adapter {struct ks8842_tx_dma_ctl dma_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct ks8842_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct net_device		*netdev = data;
	struct ks8842_adapter		*adapter = FUNC1(netdev);
	struct ks8842_tx_dma_ctl	*ctl = &adapter->dma_tx;

	FUNC0(netdev, "TX DMA finished\n");

	if (!ctl->adesc)
		return;

	netdev->stats.tx_packets++;
	ctl->adesc = NULL;

	if (FUNC2(netdev))
		FUNC3(netdev);
}