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
struct pcmcia_device {int /*<<< orphan*/  config_flags; struct net_device* priv; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct ei_device {int /*<<< orphan*/  page_lock; } ;
struct axnet_dev {struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 struct axnet_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC1 (int) ; 
 int FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  axnet_netdev_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct ei_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *link)
{
    struct axnet_dev *info;
    struct net_device *dev;
    struct ei_device *ei_local;

    FUNC3(&link->dev, "axnet_attach()\n");

    dev = FUNC1(sizeof(struct ei_device) + sizeof(struct axnet_dev));
    if (!dev)
	return -ENOMEM;

    ei_local = FUNC4(dev);
    FUNC5(&ei_local->page_lock);

    info = FUNC0(dev);
    info->p_dev = link;
    link->priv = dev;
    link->config_flags |= CONF_ENABLE_IRQ;

    dev->netdev_ops = &axnet_netdev_ops;

    dev->watchdog_timeo = TX_TIMEOUT;

    return FUNC2(link);
}