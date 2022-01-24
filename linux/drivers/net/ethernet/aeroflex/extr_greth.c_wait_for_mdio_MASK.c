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
struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int GRETH_MII_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int jiffies ; 
 scalar_t__ FUNC1 (int,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(struct greth_private *greth)
{
	unsigned long timeout = jiffies + 4*HZ/100;
	while (FUNC0(greth->regs->mdio) & GRETH_MII_BUSY) {
		if (FUNC1(jiffies, timeout))
			return 0;
	}
	return 1;
}