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
struct net_device {int /*<<< orphan*/  mem_end; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct ethoc {int old_link; int old_duplex; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethoc_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ethoc* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct ethoc*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct ethoc *priv = FUNC5(dev);
	int ret;

	ret = FUNC11(dev->irq, ethoc_interrupt, IRQF_SHARED,
			dev->name, dev);
	if (ret)
		return ret;

	FUNC4(&priv->napi);

	FUNC2(priv, dev->mem_start);
	FUNC3(priv);

	if (FUNC7(dev)) {
		FUNC0(&dev->dev, " resuming queue\n");
		FUNC9(dev);
	} else {
		FUNC0(&dev->dev, " starting queue\n");
		FUNC8(dev);
	}

	priv->old_link = -1;
	priv->old_duplex = -1;

	FUNC10(dev->phydev);

	if (FUNC6(priv)) {
		FUNC1(&dev->dev, "I/O: %08lx Memory: %08lx-%08lx\n",
				dev->base_addr, dev->mem_start, dev->mem_end);
	}

	return 0;
}