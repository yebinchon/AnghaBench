#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slvl_device {TYPE_1__* chan; } ;
struct net_device {int base_addr; int irq; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  xmit; int /*<<< orphan*/  attach; } ;
struct TYPE_3__ {struct net_device* netdevice; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct slvl_device*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  sealevel_attach ; 
 int /*<<< orphan*/  sealevel_ops ; 
 int /*<<< orphan*/  sealevel_queue_xmit ; 

__attribute__((used)) static int FUNC5(struct slvl_device *sv, int iobase, int irq)
{
	struct net_device *dev = FUNC0(sv);
	if (!dev)
		return -1;

	FUNC1(dev)->attach = sealevel_attach;
	FUNC1(dev)->xmit = sealevel_queue_xmit;
	dev->netdev_ops = &sealevel_ops;
	dev->base_addr = iobase;
	dev->irq = irq;

	if (FUNC4(dev)) {
		FUNC3("unable to register HDLC device\n");
		FUNC2(dev);
		return -1;
	}

	sv->chan->netdevice = dev;
	return 0;
}