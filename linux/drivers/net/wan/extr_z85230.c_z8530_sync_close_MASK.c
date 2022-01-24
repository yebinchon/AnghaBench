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
typedef  int /*<<< orphan*/  u8 ;
struct z8530_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/ * regs; scalar_t__ sync; scalar_t__ max; int /*<<< orphan*/ * irqs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0 ; 
 size_t R3 ; 
 int /*<<< orphan*/  FUNC0 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct z8530_channel*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  z8530_nop ; 
 int /*<<< orphan*/  FUNC4 (struct z8530_channel*,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev, struct z8530_channel *c)
{
	u8 chk;
	unsigned long flags;
	
	FUNC1(c->lock, flags);
	c->irqs = &z8530_nop;
	c->max = 0;
	c->sync = 0;
	
	chk=FUNC0(c,R0);
	FUNC3(c, R3, c->regs[R3]);
	FUNC4(c,0);

	FUNC2(c->lock, flags);
	return 0;
}