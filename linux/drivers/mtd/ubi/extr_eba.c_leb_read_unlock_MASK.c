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
struct ubi_ltree_entry {scalar_t__ users; int /*<<< orphan*/  rb; int /*<<< orphan*/  mutex; } ;
struct ubi_device {int /*<<< orphan*/  ltree_lock; int /*<<< orphan*/  ltree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubi_ltree_entry*) ; 
 struct ubi_ltree_entry* FUNC1 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ubi_device *ubi, int vol_id, int lnum)
{
	struct ubi_ltree_entry *le;

	FUNC3(&ubi->ltree_lock);
	le = FUNC1(ubi, vol_id, lnum);
	le->users -= 1;
	FUNC5(le->users >= 0);
	FUNC6(&le->mutex);
	if (le->users == 0) {
		FUNC2(&le->rb, &ubi->ltree);
		FUNC0(le);
	}
	FUNC4(&ubi->ltree_lock);
}