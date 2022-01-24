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
struct net_device {int /*<<< orphan*/  irq; } ;
struct macio_dev {int dummy; } ;
struct mace_data {int /*<<< orphan*/  mace; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  rx_dma_intr; int /*<<< orphan*/  tx_dma_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct macio_dev*,int /*<<< orphan*/ *) ; 
 struct mace_data* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct macio_dev *mdev)
{
	struct net_device *dev = FUNC4(mdev);
	struct mace_data *mp;

	FUNC0(dev == NULL);

	FUNC6(mdev, NULL);

	mp = FUNC7(dev);

	FUNC8(dev);

	FUNC1(dev->irq, dev);
	FUNC1(mp->tx_dma_intr, dev);
	FUNC1(mp->rx_dma_intr, dev);

	FUNC3(mp->rx_dma);
	FUNC3(mp->tx_dma);
	FUNC3(mp->mace);

	FUNC2(dev);

	FUNC5(mdev);

	return 0;
}