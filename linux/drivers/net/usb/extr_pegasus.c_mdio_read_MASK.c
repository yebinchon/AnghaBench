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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pegasus_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int phy_id, int loc)
{
	pegasus_t *pegasus = FUNC0(dev);
	u16 res;

	FUNC1(pegasus, phy_id, loc, &res);
	return (int)res;
}