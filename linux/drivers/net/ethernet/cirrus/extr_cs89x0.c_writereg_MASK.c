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
typedef  int /*<<< orphan*/  u16 ;
struct net_local {scalar_t__ virt_addr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADD_PORT ; 
 scalar_t__ DATA_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct net_local* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *dev, u16 regno, u16 value)
{
	struct net_local *lp = FUNC1(dev);

	FUNC0(regno, lp->virt_addr + ADD_PORT);
	FUNC0(value, lp->virt_addr + DATA_PORT);
}