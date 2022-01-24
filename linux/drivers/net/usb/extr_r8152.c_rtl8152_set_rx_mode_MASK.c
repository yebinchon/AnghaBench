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
struct r8152 {int /*<<< orphan*/  schedule; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_SET_RX_MODE ; 
 struct r8152* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct r8152 *tp = FUNC0(netdev);

	if (FUNC1(netdev)) {
		FUNC3(RTL8152_SET_RX_MODE, &tp->flags);
		FUNC2(&tp->schedule, 0);
	}
}