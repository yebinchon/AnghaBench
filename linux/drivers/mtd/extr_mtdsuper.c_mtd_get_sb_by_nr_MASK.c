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
struct mtd_info {int dummy; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_context*,char*,int) ; 
 struct mtd_info* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct fs_context*,struct mtd_info*,int (*) (struct super_block*,struct fs_context*)) ; 

__attribute__((used)) static int FUNC5(struct fs_context *fc, int mtdnr,
			    int (*fill_super)(struct super_block *,
					      struct fs_context *))
{
	struct mtd_info *mtd;

	mtd = FUNC3(NULL, mtdnr);
	if (FUNC0(mtd)) {
		FUNC2(fc, "MTDSB: Device #%u doesn't appear to exist\n", mtdnr);
		return FUNC1(mtd);
	}

	return FUNC4(fc, mtd, fill_super);
}