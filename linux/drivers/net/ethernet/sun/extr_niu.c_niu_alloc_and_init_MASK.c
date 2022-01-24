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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct niu_ops {int dummy; } ;
struct niu {int /*<<< orphan*/  port; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; struct niu_ops const* ops; struct device* device; struct platform_device* op; struct pci_dev* pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIU_NUM_TXCHAN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 struct net_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct niu* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  niu_debug ; 
 int /*<<< orphan*/  niu_reset_task ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC5(struct device *gen_dev,
					     struct pci_dev *pdev,
					     struct platform_device *op,
					     const struct niu_ops *ops, u8 port)
{
	struct net_device *dev;
	struct niu *np;

	dev = FUNC2(sizeof(struct niu), NIU_NUM_TXCHAN);
	if (!dev)
		return NULL;

	FUNC1(dev, gen_dev);

	np = FUNC3(dev);
	np->dev = dev;
	np->pdev = pdev;
	np->op = op;
	np->device = gen_dev;
	np->ops = ops;

	np->msg_enable = niu_debug;

	FUNC4(&np->lock);
	FUNC0(&np->reset_task, niu_reset_task);

	np->port = port;

	return dev;
}