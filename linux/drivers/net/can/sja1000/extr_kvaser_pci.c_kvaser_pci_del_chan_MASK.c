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
struct sja1000_priv {int /*<<< orphan*/  reg_base; struct kvaser_pci* priv; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct kvaser_pci {int no_channels; int /*<<< orphan*/  res_addr; TYPE_1__* pci_dev; int /*<<< orphan*/  conf_addr; struct net_device** slave_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct sja1000_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct sja1000_priv *priv;
	struct kvaser_pci *board;
	int i;

	if (!dev)
		return;
	priv = FUNC3(dev);
	board = priv->priv;
	if (!board)
		return;

	FUNC0(&board->pci_dev->dev, "Removing device %s\n",
		 dev->name);

	/* Disable PCI interrupts */
	FUNC2(dev);

	for (i = 0; i < board->no_channels - 1; i++) {
		if (board->slave_dev[i]) {
			FUNC0(&board->pci_dev->dev, "Removing device %s\n",
				 board->slave_dev[i]->name);
			FUNC5(board->slave_dev[i]);
			FUNC1(board->slave_dev[i]);
		}
	}
	FUNC5(dev);

	FUNC4(board->pci_dev, priv->reg_base);
	FUNC4(board->pci_dev, board->conf_addr);
	FUNC4(board->pci_dev, board->res_addr);

	FUNC1(dev);
}