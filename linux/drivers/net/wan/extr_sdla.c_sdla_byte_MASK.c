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
struct net_device {scalar_t__ mem_start; } ;

/* Variables and functions */
 int SDLA_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  sdla_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static char FUNC3(struct net_device *dev, int addr)
{
	unsigned long flags;
	char          byte, *temp;

	temp = (void *) (dev->mem_start + (addr & SDLA_ADDR_MASK));

	FUNC1(&sdla_lock, flags);
	FUNC0(dev, addr);
	byte = *temp;
	FUNC2(&sdla_lock, flags);

	return byte;
}