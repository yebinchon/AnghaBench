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
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int cmd)
{
	int i = 100;
	FUNC2(cmd, dev->base_addr + EL3_CMD);
	while (--i > 0)
		if (!(FUNC0(dev->base_addr + EL3_STATUS) & 0x1000))
			break;
	if (i == 0)
		FUNC1(dev, "command 0x%04x did not complete!\n", cmd);
}