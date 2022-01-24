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
struct pcmcia_device {struct com20020_dev* priv; int /*<<< orphan*/  config_flags; TYPE_2__** resource; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct com20020_dev {struct net_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct arcnet_local {int clockm; TYPE_1__ hw; int /*<<< orphan*/  clockp; int /*<<< orphan*/  backplane; int /*<<< orphan*/  timeout; } ;
struct TYPE_4__ {int end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_8 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct net_device* FUNC0 (char*) ; 
 int /*<<< orphan*/  backplane ; 
 int clockm ; 
 int /*<<< orphan*/  clockp ; 
 int FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct com20020_dev*) ; 
 struct com20020_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct arcnet_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  node ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *p_dev)
{
	struct com20020_dev *info;
	struct net_device *dev;
	struct arcnet_local *lp;

	FUNC2(&p_dev->dev, "com20020_attach()\n");

	/* Create new network device */
	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (!info)
		goto fail_alloc_info;

	dev = FUNC0("");
	if (!dev)
		goto fail_alloc_dev;

	lp = FUNC5(dev);
	lp->timeout = timeout;
	lp->backplane = backplane;
	lp->clockp = clockp;
	lp->clockm = clockm & 3;
	lp->hw.owner = THIS_MODULE;

	/* fill in our module parameters as defaults */
	dev->dev_addr[0] = node;

	p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
	p_dev->resource[0]->end = 16;
	p_dev->config_flags |= CONF_ENABLE_IRQ;

	info->dev = dev;
	p_dev->priv = info;

	return FUNC1(p_dev);

fail_alloc_dev:
	FUNC3(info);
fail_alloc_info:
	return -ENOMEM;
}