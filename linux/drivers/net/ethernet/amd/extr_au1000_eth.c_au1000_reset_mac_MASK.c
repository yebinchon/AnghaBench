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
struct au1000_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  hw ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1000_private* const,int /*<<< orphan*/ ,struct net_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct au1000_private *const aup = FUNC1(dev);
	unsigned long flags;

	FUNC2(aup, hw, dev, "reset mac, aup %x\n",
					(unsigned)aup);

	FUNC3(&aup->lock, flags);

	FUNC0(dev);

	FUNC4(&aup->lock, flags);
}