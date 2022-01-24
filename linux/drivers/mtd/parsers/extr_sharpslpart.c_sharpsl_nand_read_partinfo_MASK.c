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
struct sharpsl_nand_partinfo {int /*<<< orphan*/  start; int /*<<< orphan*/  end; int /*<<< orphan*/  magic; } ;
struct sharpsl_ftl {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ BOOT_MAGIC ; 
 int EINVAL ; 
 scalar_t__ FSRO_MAGIC ; 
 scalar_t__ FSRW_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ ,size_t,struct sharpsl_nand_partinfo*,struct sharpsl_ftl*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *master,
				      loff_t from,
				      size_t len,
				      struct sharpsl_nand_partinfo *buf,
				      struct sharpsl_ftl *ftl)
{
	int ret;

	ret = FUNC4(master, from, len, buf, ftl);
	if (ret)
		return ret;

	/* check for magics */
	if (FUNC0(buf[0].magic) != BOOT_MAGIC ||
	    FUNC0(buf[1].magic) != FSRO_MAGIC ||
	    FUNC0(buf[2].magic) != FSRW_MAGIC) {
		FUNC3("sharpslpart: magic values mismatch\n");
		return -EINVAL;
	}

	/* fixup for hardcoded value 64 MiB (for older models) */
	buf[2].end = FUNC1(master->size);

	/* extra sanity check */
	if (FUNC2(buf[0].end) <= FUNC2(buf[0].start) ||
	    FUNC2(buf[1].start) < FUNC2(buf[0].end) ||
	    FUNC2(buf[1].end) <= FUNC2(buf[1].start) ||
	    FUNC2(buf[2].start) < FUNC2(buf[1].end) ||
	    FUNC2(buf[2].end) <= FUNC2(buf[2].start)) {
		FUNC3("sharpslpart: partition sizes mismatch\n");
		return -EINVAL;
	}

	return 0;
}