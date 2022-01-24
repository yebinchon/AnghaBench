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
struct smc_private {int /*<<< orphan*/  base; } ;
struct pcmcia_device {struct net_device* priv; TYPE_1__** resource; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct smc_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
	FUNC0(&link->dev, "smc91c92_release\n");
	if (link->resource[2]->end) {
		struct net_device *dev = link->priv;
		struct smc_private *smc = FUNC2(dev);
		FUNC1(smc->base);
	}
	FUNC3(link);
}