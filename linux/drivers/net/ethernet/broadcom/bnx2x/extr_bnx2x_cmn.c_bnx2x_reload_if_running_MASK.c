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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOAD_NORMAL ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 int FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 struct bnx2x* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct net_device *dev)
{
	struct bnx2x *bp = FUNC2(dev);

	if (FUNC4(!FUNC3(dev)))
		return 0;

	FUNC1(bp, UNLOAD_NORMAL, true);
	return FUNC0(bp, LOAD_NORMAL);
}