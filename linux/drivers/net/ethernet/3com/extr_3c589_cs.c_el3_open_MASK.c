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
struct pcmcia_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  open; } ;
struct net_device {scalar_t__ base_addr; int /*<<< orphan*/  name; } ;
struct el3_private {int /*<<< orphan*/  media; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 scalar_t__ EL3_STATUS ; 
 int ENODEV ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  media_check ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct el3_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct el3_private *lp = FUNC3(dev);
	struct pcmcia_device *link = lp->p_dev;

	if (!FUNC5(link))
		return -ENODEV;

	link->open++;
	FUNC4(dev);

	FUNC6(dev);
	FUNC7(&lp->media, media_check, 0);
	FUNC2(&lp->media, jiffies + HZ);

	FUNC0(&link->dev, "%s: opened, status %4.4x.\n",
	  dev->name, FUNC1(dev->base_addr + EL3_STATUS));

	return 0;
}