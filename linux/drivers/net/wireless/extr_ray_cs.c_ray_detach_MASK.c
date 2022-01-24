#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  dev; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ ray_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 
 int /*<<< orphan*/ * this_device ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct pcmcia_device *link)
{
	struct net_device *dev;
	ray_dev_t *local;

	FUNC1(&link->dev, "ray_detach\n");

	this_device = NULL;
	dev = link->priv;

	FUNC4(link);

	local = FUNC3(dev);
	FUNC0(&local->timer);

	if (link->priv) {
		FUNC5(dev);
		FUNC2(dev);
	}
	FUNC1(&link->dev, "ray_cs ray_detach ending\n");
}