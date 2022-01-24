#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int config_index; int /*<<< orphan*/  dev; struct net_device* priv; int /*<<< orphan*/  config_flags; TYPE_1__** resource; } ;
struct net_device {TYPE_2__* wireless_data; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/ * spy_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  timer; TYPE_2__ wireless_data; int /*<<< orphan*/  spy_data; scalar_t__ num_multi; int /*<<< orphan*/  authentication_state; int /*<<< orphan*/  card_status; struct pcmcia_device* finder; } ;
typedef  TYPE_3__ ray_dev_t ;
struct TYPE_5__ {int /*<<< orphan*/  flags; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_INSERTED ; 
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_8 ; 
 int /*<<< orphan*/  UNAUTHENTICATED ; 
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  ray_handler_def ; 
 int /*<<< orphan*/  ray_interrupt ; 
 int /*<<< orphan*/  ray_netdev_ops ; 
 struct pcmcia_device* this_device ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *p_dev)
{
	ray_dev_t *local;
	struct net_device *dev;

	FUNC1(&p_dev->dev, "ray_attach()\n");

	/* Allocate space for private device-specific data */
	dev = FUNC0(sizeof(ray_dev_t));
	if (!dev)
		goto fail_alloc_dev;

	local = FUNC2(dev);
	local->finder = p_dev;

	/* The io structure describes IO port mapping. None used here */
	p_dev->resource[0]->end = 0;
	p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;

	/* General socket configuration */
	p_dev->config_flags |= CONF_ENABLE_IRQ;
	p_dev->config_index = 1;

	p_dev->priv = dev;

	local->finder = p_dev;
	local->card_status = CARD_INSERTED;
	local->authentication_state = UNAUTHENTICATED;
	local->num_multi = 0;
	FUNC1(&p_dev->dev, "ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\n",
	      p_dev, dev, local, &ray_interrupt);

	/* Raylink entries in the device structure */
	dev->netdev_ops = &ray_netdev_ops;
	dev->wireless_handlers = &ray_handler_def;
#ifdef WIRELESS_SPY
	local->wireless_data.spy_data = &local->spy_data;
	dev->wireless_data = &local->wireless_data;
#endif /* WIRELESS_SPY */


	FUNC1(&p_dev->dev, "ray_cs ray_attach calling ether_setup.)\n");
	FUNC3(dev);

	FUNC5(&local->timer, NULL, 0);

	this_device = p_dev;
	return FUNC4(p_dev);

fail_alloc_dev:
	return -ENOMEM;
}