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
struct net_device {scalar_t__ dev_addr; } ;
struct de4x5_srom {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  ieee_addr; } ;
struct de4x5_private {int useSROM; TYPE_1__ srom; } ;

/* Variables and functions */
 int ETH_ALEN ; 
#define  SMC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 struct de4x5_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ * srom_repair_info ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, int card)
{
    struct de4x5_private *lp = FUNC2(dev);

    switch(card) {
      case SMC:
	FUNC1((char *)&lp->srom, 0, sizeof(struct de4x5_srom));
	FUNC0(lp->srom.ieee_addr, (char *)dev->dev_addr, ETH_ALEN);
	FUNC0(lp->srom.info, (char *)&srom_repair_info[SMC-1], 100);
	lp->useSROM = true;
	break;
    }
}