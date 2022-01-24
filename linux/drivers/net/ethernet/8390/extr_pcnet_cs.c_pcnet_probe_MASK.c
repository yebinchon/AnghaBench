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
struct pcnet_dev {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct net_device* priv; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 struct pcnet_dev* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  pcnet_netdev_ops ; 

__attribute__((used)) static int FUNC4(struct pcmcia_device *link)
{
    struct pcnet_dev *info;
    struct net_device *dev;

    FUNC2(&link->dev, "pcnet_attach()\n");

    /* Create new ethernet device */
    dev = FUNC1(sizeof(struct pcnet_dev));
    if (!dev) return -ENOMEM;
    info = FUNC0(dev);
    info->p_dev = link;
    link->priv = dev;

    link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

    dev->netdev_ops = &pcnet_netdev_ops;

    return FUNC3(link);
}