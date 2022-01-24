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
struct net_device {int /*<<< orphan*/  irq; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ txing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  jiffies ; 
 struct ei_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ei_device*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	unsigned char *target = FUNC4(FUNC0(dev->irq));
	struct ei_device *ei_local = FUNC1(dev);

	FUNC2(ei_local, hw, dev, "Need to reset the NS8390 t=%lu...",
		   jiffies);
	ei_status.txing = 0;
	target[0xC0000] = 0;
	if (FUNC3(ei_local))
		FUNC5("reset complete\n");
}