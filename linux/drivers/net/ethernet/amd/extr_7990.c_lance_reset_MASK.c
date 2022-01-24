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
struct lance_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_private*) ; 
 struct lance_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct lance_private *lp = FUNC5(dev);
	int status;

	/* Stop the lance */
	FUNC0(lp, LE_CSR0);
	FUNC1(lp, LE_C0_STOP);

	FUNC4(lp);
	FUNC3(dev);
	FUNC6(dev); /* prevent tx timeout */
	status = FUNC2(lp);
#ifdef DEBUG_DRIVER
	printk("Lance restart=%d\n", status);
#endif
	return status;
}