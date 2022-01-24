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
struct sis190_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mmio_addr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sis190_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs,
			    void *p)
{
	struct sis190_private *tp = FUNC1(dev);
	unsigned long flags;

	FUNC2(&tp->lock, flags);
	FUNC0(p, tp->mmio_addr, regs->len);
	FUNC3(&tp->lock, flags);
}