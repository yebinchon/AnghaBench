#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {TYPE_1__ u; } ;
struct ubi_device {scalar_t__ free_count; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL_FREE_MAX_DIFF ; 
 struct ubi_wl_entry* FUNC0 (struct ubi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static struct ubi_wl_entry *FUNC4(struct ubi_device *ubi)
{
	struct ubi_wl_entry *e;

	e = FUNC0(ubi, &ubi->free, WL_FREE_MAX_DIFF);
	FUNC2(ubi, e, &ubi->free);
	ubi->free_count--;
	FUNC3(ubi->free_count >= 0);
	FUNC1(&e->u.rb, &ubi->free);

	return e;
}