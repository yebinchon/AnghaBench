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
struct pcmcia_device {int /*<<< orphan*/  config_flags; TYPE_1__** resource; struct net_device* priv; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct local_info {int /*<<< orphan*/ * base; struct pcmcia_device* p_dev; } ;
struct TYPE_2__ {int end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_AUTO ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  fjn_netdev_ops ; 
 int FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  netdev_ethtool_ops ; 
 struct local_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_device *link)
{
    struct local_info *lp;
    struct net_device *dev;

    FUNC1(&link->dev, "fmvj18x_attach()\n");

    /* Make up a FMVJ18x specific data structure */
    dev = FUNC0(sizeof(struct local_info));
    if (!dev)
	return -ENOMEM;
    lp = FUNC3(dev);
    link->priv = dev;
    lp->p_dev = link;
    lp->base = NULL;

    /* The io structure describes IO port mapping */
    link->resource[0]->end = 32;
    link->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;

    /* General socket configuration */
    link->config_flags |= CONF_ENABLE_IRQ;

    dev->netdev_ops = &fjn_netdev_ops;
    dev->watchdog_timeo = TX_TIMEOUT;

    dev->ethtool_ops = &netdev_ethtool_ops;

    return FUNC2(link);
}