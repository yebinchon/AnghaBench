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
struct lance_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ HPLANCE_STATUS ; 
 int /*<<< orphan*/  LE_IE ; 
 int FUNC0 (struct net_device*) ; 
 struct lance_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	int status;
	struct lance_private *lp = FUNC1(dev);

	status = FUNC0(dev);                 /* call generic lance open code */
	if (status)
		return status;
	/* enable interrupts at board level. */
	FUNC2(lp->base + HPLANCE_STATUS, LE_IE);

	return 0;
}