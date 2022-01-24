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
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  lpdd2_nvm_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct map_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t start_add,
				size_t len, size_t *retlen, u_char *buf)
{
	struct map_info *map = mtd->priv;

	FUNC1(&lpdd2_nvm_mutex);

	*retlen = len;

	FUNC0(map, buf, start_add, *retlen);

	FUNC2(&lpdd2_nvm_mutex);
	return 0;
}