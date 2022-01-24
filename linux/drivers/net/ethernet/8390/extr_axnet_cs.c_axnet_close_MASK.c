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
struct pcmcia_device {int /*<<< orphan*/  open; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct axnet_dev {int /*<<< orphan*/  watchdog; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 struct axnet_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
    struct axnet_dev *info = FUNC0(dev);
    struct pcmcia_device *link = info->p_dev;

    FUNC3(&link->dev, "axnet_close('%s')\n", dev->name);

    FUNC1(dev);
    FUNC4(dev->irq, dev);
    
    link->open--;
    FUNC5(dev);
    FUNC2(&info->watchdog);

    return 0;
}