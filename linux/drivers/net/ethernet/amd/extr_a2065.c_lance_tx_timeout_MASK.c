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
struct lance_regs {int /*<<< orphan*/  rdp; } ;
struct lance_private {struct lance_regs* ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct lance_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct lance_private *lp = FUNC2(dev);
	volatile struct lance_regs *ll = lp->ll;

	FUNC1(dev, "transmit timed out, status %04x, reset\n", ll->rdp);
	FUNC0(dev);
	FUNC3(dev);
}