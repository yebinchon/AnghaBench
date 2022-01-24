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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct bigmac {int sw_bmsr; int /*<<< orphan*/  lock; int /*<<< orphan*/  tregs; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int FUNC0 (struct bigmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bigmac* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC4(struct net_device *dev)
{
	struct bigmac *bp = FUNC1(dev);

	FUNC2(&bp->lock);
	bp->sw_bmsr = FUNC0(bp, bp->tregs, MII_BMSR);
	FUNC3(&bp->lock);

	return (bp->sw_bmsr & BMSR_LSTATUS);
}