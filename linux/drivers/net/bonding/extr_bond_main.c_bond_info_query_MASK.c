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
struct ifbond {int dummy; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*,struct ifbond*) ; 
 struct bonding* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *bond_dev, struct ifbond *info)
{
	struct bonding *bond = FUNC1(bond_dev);
	FUNC0(bond, info);
}