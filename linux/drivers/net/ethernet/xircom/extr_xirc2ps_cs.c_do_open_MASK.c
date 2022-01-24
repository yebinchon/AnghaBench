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
struct net_device {int dummy; } ;
struct local_info {struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct local_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
    struct local_info *lp = FUNC2(dev);
    struct pcmcia_device *link = lp->p_dev;

    FUNC0(&link->dev, "do_open(%p)\n", dev);

    /* Check that the PCMCIA card is still here. */
    /* Physical device present signature. */
    if (!FUNC4(link))
	return -ENODEV;

    /* okay */
    link->open++;

    FUNC3(dev);
    FUNC1(dev,1);

    return 0;
}