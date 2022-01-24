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
struct ubi_ltree_entry {int /*<<< orphan*/  mutex; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_ltree_entry*) ; 
 int FUNC1 (struct ubi_ltree_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ubi_ltree_entry* FUNC3 (struct ubi_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct ubi_device *ubi, int vol_id, int lnum)
{
	struct ubi_ltree_entry *le;

	le = FUNC3(ubi, vol_id, lnum);
	if (FUNC0(le))
		return FUNC1(le);
	FUNC2(&le->mutex);
	return 0;
}