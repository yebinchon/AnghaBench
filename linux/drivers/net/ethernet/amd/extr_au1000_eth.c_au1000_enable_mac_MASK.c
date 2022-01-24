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
struct au1000_private {int mac_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int MAC_EN_CLOCK_ENABLE ; 
 int MAC_EN_RESET0 ; 
 int MAC_EN_RESET1 ; 
 int MAC_EN_RESET2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int force_reset)
{
	unsigned long flags;
	struct au1000_private *aup = FUNC1(dev);

	FUNC2(&aup->lock, flags);

	if (force_reset || (!aup->mac_enabled)) {
		FUNC5(MAC_EN_CLOCK_ENABLE, aup->enable);
		FUNC4(); /* drain writebuffer */
		FUNC0(2);
		FUNC5((MAC_EN_RESET0 | MAC_EN_RESET1 | MAC_EN_RESET2
				| MAC_EN_CLOCK_ENABLE), aup->enable);
		FUNC4(); /* drain writebuffer */
		FUNC0(2);

		aup->mac_enabled = 1;
	}

	FUNC3(&aup->lock, flags);
}