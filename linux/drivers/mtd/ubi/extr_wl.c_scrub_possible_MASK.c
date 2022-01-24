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
struct ubi_wl_entry {int dummy; } ;
struct ubi_device {struct ubi_wl_entry* move_to; struct ubi_wl_entry* move_from; int /*<<< orphan*/  erroneous; int /*<<< orphan*/  scrub; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct ubi_device *ubi, struct ubi_wl_entry *e)
{
	if (FUNC0(e, &ubi->scrub))
		return false;
	else if (FUNC0(e, &ubi->erroneous))
		return false;
	else if (ubi->move_from == e)
		return false;
	else if (ubi->move_to == e)
		return false;

	return true;
}