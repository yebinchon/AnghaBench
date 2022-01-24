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
struct happy_meal {int sw_bmsr; int /*<<< orphan*/  happy_lock; int /*<<< orphan*/  tcvregs; int /*<<< orphan*/  sw_bmcr; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct happy_meal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct happy_meal* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC4(struct net_device *dev)
{
	struct happy_meal *hp = FUNC1(dev);

	FUNC2(&hp->happy_lock);
	hp->sw_bmcr = FUNC0(hp, hp->tcvregs, MII_BMCR);
	FUNC3(&hp->happy_lock);

	return hp->sw_bmsr & BMSR_LSTATUS;
}