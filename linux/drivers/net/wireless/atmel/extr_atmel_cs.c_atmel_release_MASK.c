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
struct pcmcia_device {scalar_t__ priv; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct local_info {struct net_device* eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct net_device *dev = ((struct local_info *)link->priv)->eth_dev;

	FUNC0(&link->dev, "atmel_release\n");

	if (dev)
		FUNC2(dev);
	((struct local_info *)link->priv)->eth_dev = NULL;

	FUNC1(link);
}