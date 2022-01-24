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
struct lance_private {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct lance_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *dev)
{
	struct lance_private *lp = FUNC3(dev);

	FUNC4(dev);

	/* Stop the LANCE */
	FUNC0(lp, LE_CSR0);
	FUNC1(lp, LE_C0_STOP);

	FUNC2(lp->irq, dev);

	return 0;
}