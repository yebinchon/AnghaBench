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
struct bonding {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*) ; 

__attribute__((used)) static int FUNC3(struct bonding *bond)
{
	FUNC2(bond);
	FUNC0(bond);

	FUNC1(bond);

	return NOTIFY_DONE;
}