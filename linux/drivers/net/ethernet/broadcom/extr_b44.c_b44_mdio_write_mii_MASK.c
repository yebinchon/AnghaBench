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
struct b44 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b44*,int,int,int) ; 
 struct b44* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, int phy_id, int location,
			       int val)
{
	struct b44 *bp = FUNC1(dev);
	FUNC0(bp, phy_id, location, val);
}