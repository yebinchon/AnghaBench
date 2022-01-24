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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIFCSR ; 
 int /*<<< orphan*/  MIFDELAY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct net_device *dev, unsigned int addr, unsigned int val)
{
	FUNC1(dev, MIFCSR, 4);
	MIFDELAY;
	FUNC0(dev, ~0U, 32);
	FUNC0(dev, 5, 4);
	FUNC0(dev, addr, 10);
	FUNC0(dev, 2, 2);
	FUNC0(dev, val, 16);
	FUNC0(dev, 3, 2);
}