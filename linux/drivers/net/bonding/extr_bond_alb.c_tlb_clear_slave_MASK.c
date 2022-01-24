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
struct slave {int dummy; } ;
struct bonding {int /*<<< orphan*/  mode_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*,struct slave*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bonding *bond, struct slave *slave,
			 int save_load)
{
	FUNC1(&bond->mode_lock);
	FUNC0(bond, slave, save_load);
	FUNC2(&bond->mode_lock);
}