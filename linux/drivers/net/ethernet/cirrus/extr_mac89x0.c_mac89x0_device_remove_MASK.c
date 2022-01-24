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
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ ADD_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct net_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct net_device *dev = FUNC2(pdev);

	FUNC3(dev);
	FUNC1(0, dev->base_addr + ADD_PORT);
	FUNC0(dev);
	return 0;
}