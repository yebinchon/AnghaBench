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
struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct axnet_dev {int active_low; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  CISREG_CCSR ; 
 struct axnet_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
	struct net_device *dev = link->priv;
	struct axnet_dev *info = FUNC1(dev);

	if (link->open) {
		if (info->active_low == 1)
			FUNC4(link, CISREG_CCSR, 0x04);

		FUNC2(dev);
		FUNC0(dev, 1);
		FUNC3(dev);
	}

	return 0;
}