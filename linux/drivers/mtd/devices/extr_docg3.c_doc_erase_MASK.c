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
typedef  scalar_t__ uint64_t ;
struct mtd_info {scalar_t__ size; scalar_t__ erasesize; struct docg3* priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; } ;
struct docg3 {TYPE_1__* cascade; int /*<<< orphan*/  device_id; int /*<<< orphan*/  reliable; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*,int*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct docg3*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, struct erase_info *info)
{
	struct docg3 *docg3 = mtd->priv;
	uint64_t len;
	int block0, block1, page, ret = 0, ofs = 0;

	FUNC1("doc_erase(from=%lld, len=%lld\n", info->addr, info->len);

	FUNC0(info->addr + info->len, &block0, &block1, &page,
			  &ofs, docg3->reliable);
	if (info->addr + info->len > mtd->size || page || ofs)
		return -EINVAL;

	FUNC0(info->addr, &block0, &block1, &page, &ofs,
			  docg3->reliable);
	FUNC5(&docg3->cascade->lock);
	FUNC3(docg3, docg3->device_id);
	FUNC4(docg3);
	for (len = info->len; !ret && len > 0; len -= mtd->erasesize) {
		ret = FUNC2(docg3, block0, block1);
		block0 += 2;
		block1 += 2;
	}
	FUNC6(&docg3->cascade->lock);

	return ret;
}