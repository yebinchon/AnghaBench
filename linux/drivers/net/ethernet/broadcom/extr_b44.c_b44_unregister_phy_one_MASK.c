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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct mii_bus {int dummy; } ;
struct b44 {struct mii_bus* mii_bus; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct b44 *bp)
{
	struct net_device *dev = bp->dev;
	struct mii_bus *mii_bus = bp->mii_bus;

	FUNC2(dev->phydev);
	FUNC1(mii_bus);
	FUNC0(mii_bus);
}