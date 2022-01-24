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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {scalar_t__ erasesize; struct map_info* priv; } ;
struct map_info {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  lpdd2_nvm_mutex ; 
 int FUNC0 (struct map_info*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t start_add,
	uint64_t len, u_char block_op)
{
	struct map_info *map = mtd->priv;
	u_long add, end_add;
	int ret = 0;

	FUNC1(&lpdd2_nvm_mutex);

	FUNC4(map);

	add = start_add;
	end_add = add + len;

	do {
		ret = FUNC0(map, block_op, 0x00, add, add, NULL);
		if (ret)
			goto out;
		add += mtd->erasesize;
	} while (add < end_add);

out:
	FUNC3(map);
	FUNC2(&lpdd2_nvm_mutex);
	return ret;
}