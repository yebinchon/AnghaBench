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
struct ubi_wl_entry {int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; } ;
struct ubi_device {int dummy; } ;
struct rb_root {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct ubi_wl_entry*,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rb_root*) ; 

__attribute__((used)) static int FUNC4(const struct ubi_device *ubi,
				 struct ubi_wl_entry *e, struct rb_root *root)
{
	if (!FUNC2(ubi))
		return 0;

	if (FUNC1(e, root))
		return 0;

	FUNC3(ubi, "self-check failed for PEB %d, EC %d, RB-tree %p ",
		e->pnum, e->ec, root);
	FUNC0();
	return -EINVAL;
}