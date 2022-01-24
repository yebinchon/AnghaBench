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
struct bonding {int /*<<< orphan*/  slave_arr_work; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  ad_work; int /*<<< orphan*/  alb_work; int /*<<< orphan*/  arp_work; int /*<<< orphan*/  mii_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct bonding *bond)
{
	FUNC0(&bond->mii_work);
	FUNC0(&bond->arp_work);
	FUNC0(&bond->alb_work);
	FUNC0(&bond->ad_work);
	FUNC0(&bond->mcast_work);
	FUNC0(&bond->slave_arr_work);
}