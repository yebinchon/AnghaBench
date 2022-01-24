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
struct mdio_board_info {int dummy; } ;
struct mdio_board_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  board_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mdio_board_entry* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdio_board_list ; 
 int /*<<< orphan*/  mdio_board_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mdio_board_info const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const struct mdio_board_info *info,
				unsigned int n)
{
	struct mdio_board_entry *be;
	unsigned int i;

	be = FUNC0(n, sizeof(*be), GFP_KERNEL);
	if (!be)
		return -ENOMEM;

	for (i = 0; i < n; i++, be++, info++) {
		FUNC2(&be->board_info, info, sizeof(*info));
		FUNC3(&mdio_board_lock);
		FUNC1(&be->list, &mdio_board_list);
		FUNC4(&mdio_board_lock);
	}

	return 0;
}