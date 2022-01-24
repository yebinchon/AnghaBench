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
struct board_info {scalar_t__ type; int /*<<< orphan*/  phy_poll; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ TYPE_DM9000E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct board_info *db)
{
	if (db->type == TYPE_DM9000E)
		FUNC0(&db->phy_poll, HZ * 2);
}