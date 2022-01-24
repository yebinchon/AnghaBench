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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	if (FUNC7(dev)) {
		if (!FUNC2(dev)) {
			FUNC3(dev);
			FUNC0(dev, "link up\n");
			FUNC6(dev, false);
			FUNC4(dev);
		}
	} else {
		if (FUNC2(dev)) {
			FUNC1(dev);
			FUNC0(dev, "link down\n");
			FUNC6(dev, true);
			FUNC5(dev);
		}
	}
}