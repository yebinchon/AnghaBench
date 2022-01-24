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
typedef  size_t u32 ;
struct ddb_link {struct ddb_info* info; } ;
struct ddb_info {int board_control; int board_control_2; } ;
struct ddb {struct ddb_link* link; } ;

/* Variables and functions */
 int BOARD_CONTROL ; 
 int FUNC0 (size_t) ; 
 size_t DDB_MAX_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct ddb *dev)
{
	const struct ddb_info *info;
	struct ddb_link *link;
	u32 l;

	for (l = 0; l < DDB_MAX_LINK; l++) {
		link = &dev->link[l];
		info = link->info;

		if (!info)
			continue;
		if (info->board_control) {
			FUNC2(dev, 0, FUNC0(l) | BOARD_CONTROL);
			FUNC3(100);
			FUNC2(dev, info->board_control_2,
				  FUNC0(l) | BOARD_CONTROL);
			FUNC4(2000, 3000);
			FUNC2(dev,
				  info->board_control_2 | info->board_control,
				  FUNC0(l) | BOARD_CONTROL);
			FUNC4(2000, 3000);
		}
		FUNC1(link);
	}
	return 0;
}