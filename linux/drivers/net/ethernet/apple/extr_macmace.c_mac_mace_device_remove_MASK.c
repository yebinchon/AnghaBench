#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct mace_data {int /*<<< orphan*/  tx_ring_phys; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  device; int /*<<< orphan*/  rx_ring_phys; int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_MAC_MACE_DMA ; 
 int MACE_BUFF_SIZE ; 
 int N_RX_RING ; 
 int N_TX_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct mace_data* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct mace_data *mp = FUNC3(dev);

	FUNC5(dev);

	FUNC1(dev->irq, dev);
	FUNC1(IRQ_MAC_MACE_DMA, dev);

	FUNC0(mp->device, N_RX_RING * MACE_BUFF_SIZE,
	                  mp->rx_ring, mp->rx_ring_phys);
	FUNC0(mp->device, N_TX_RING * MACE_BUFF_SIZE,
	                  mp->tx_ring, mp->tx_ring_phys);

	FUNC2(dev);

	return 0;
}