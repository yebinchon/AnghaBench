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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EADDRNOTAVAIL ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct bnx2x *bp = FUNC4(dev);

	/* query the bulletin board for mac address configured by the PF */
	if (FUNC1(bp))
		FUNC2(bp);

	if (!FUNC3(dev->dev_addr)) {
		FUNC0("Non-valid Ethernet address\n");
		return -EADDRNOTAVAIL;
	}
	return 0;
}