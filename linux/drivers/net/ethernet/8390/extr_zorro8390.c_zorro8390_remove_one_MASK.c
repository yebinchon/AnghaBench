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
struct zorro_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int NE_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct zorro_dev*) ; 

__attribute__((used)) static void FUNC6(struct zorro_dev *z)
{
	struct net_device *dev = FUNC5(z);

	FUNC4(dev);
	FUNC1(IRQ_AMIGA_PORTS, dev);
	FUNC3(FUNC0(dev->base_addr), NE_IO_EXTENT * 2);
	FUNC2(dev);
}