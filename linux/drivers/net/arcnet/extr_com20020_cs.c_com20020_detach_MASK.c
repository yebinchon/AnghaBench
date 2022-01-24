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
struct pcmcia_device {int /*<<< orphan*/  dev; struct com20020_dev* priv; } ;
struct net_device {scalar_t__ irq; } ;
struct com20020_dev {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct com20020_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct pcmcia_device *link)
{
	struct com20020_dev *info = link->priv;
	struct net_device *dev = info->dev;

	FUNC1(&link->dev, "detach...\n");

	FUNC1(&link->dev, "com20020_detach\n");

	FUNC1(&link->dev, "unregister...\n");

	FUNC5(dev);

	/* this is necessary because we register our IRQ separately
	 * from card services.
	 */
	if (dev->irq)
		FUNC2(dev->irq, dev);

	FUNC0(link);

	/* Unlink device structure, free bits */
	FUNC1(&link->dev, "unlinking...\n");
	if (link->priv) {
		dev = info->dev;
		if (dev) {
			FUNC1(&link->dev, "kfree...\n");
			FUNC3(dev);
		}
		FUNC1(&link->dev, "kfree2...\n");
		FUNC4(info);
	}

}