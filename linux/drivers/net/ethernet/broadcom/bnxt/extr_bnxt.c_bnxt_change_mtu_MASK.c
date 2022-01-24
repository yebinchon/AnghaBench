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
struct net_device {int mtu; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int,int) ; 
 int FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int new_mtu)
{
	struct bnxt *bp = FUNC3(dev);

	if (FUNC4(dev))
		FUNC0(bp, false, false);

	dev->mtu = new_mtu;
	FUNC2(bp);

	if (FUNC4(dev))
		return FUNC1(bp, false, false);

	return 0;
}