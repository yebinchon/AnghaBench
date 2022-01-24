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
struct mtd_info {int /*<<< orphan*/  bd_dev; } ;
struct fs_context {char* source; int sb_flags; } ;
struct block_device {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mtd_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MTD_BLOCK_MAJOR ; 
 int FUNC3 (struct mtd_info*) ; 
 int SB_SILENT ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_context*,char*,char*,...) ; 
 struct mtd_info* FUNC6 (char*) ; 
 int FUNC7 (struct fs_context*,char*) ; 
 scalar_t__ FUNC8 (char) ; 
 struct mtd_info* FUNC9 (char*) ; 
 int FUNC10 (struct fs_context*,struct mtd_info*,int (*) (struct super_block*,struct fs_context*)) ; 
 int FUNC11 (struct fs_context*,int,int (*) (struct super_block*,struct fs_context*)) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC14(struct fs_context *fc,
	      int (*fill_super)(struct super_block *sb,
				struct fs_context *fc))
{
#ifdef CONFIG_BLOCK
	struct block_device *bdev;
	int ret, major;
#endif
	int mtdnr;

	if (!fc->source)
		return FUNC7(fc, "No source specified");

	FUNC12("MTDSB: dev_name \"%s\"\n", fc->source);

	/* the preferred way of mounting in future; especially when
	 * CONFIG_BLOCK=n - we specify the underlying MTD device by number or
	 * by name, so that we don't require block device support to be present
	 * in the kernel.
	 */
	if (fc->source[0] == 'm' &&
	    fc->source[1] == 't' &&
	    fc->source[2] == 'd') {
		if (fc->source[3] == ':') {
			struct mtd_info *mtd;

			/* mount by MTD device name */
			FUNC12("MTDSB: mtd:%%s, name \"%s\"\n",
				 fc->source + 4);

			mtd = FUNC6(fc->source + 4);
			if (!FUNC0(mtd))
				return FUNC10(fc, mtd, fill_super);

			FUNC5(fc, "MTD: MTD device with name \"%s\" not found",
			       fc->source + 4);

		} else if (FUNC8(fc->source[3])) {
			/* mount by MTD device number name */
			char *endptr;

			mtdnr = FUNC13(fc->source + 3, &endptr, 0);
			if (!*endptr) {
				/* It was a valid number */
				FUNC12("MTDSB: mtd%%d, mtdnr %d\n", mtdnr);
				return FUNC11(fc, mtdnr, fill_super);
			}
		}
	}

#ifdef CONFIG_BLOCK
	/* try the old way - the hack where we allowed users to mount
	 * /dev/mtdblock$(n) but didn't actually _use_ the blockdev
	 */
	bdev = lookup_bdev(fc->source);
	if (IS_ERR(bdev)) {
		ret = PTR_ERR(bdev);
		errorf(fc, "MTD: Couldn't look up '%s': %d", fc->source, ret);
		return ret;
	}
	pr_debug("MTDSB: lookup_bdev() returned 0\n");

	major = MAJOR(bdev->bd_dev);
	mtdnr = MINOR(bdev->bd_dev);
	bdput(bdev);

	if (major == MTD_BLOCK_MAJOR)
		return mtd_get_sb_by_nr(fc, mtdnr, fill_super);

#endif /* CONFIG_BLOCK */

	if (!(fc->sb_flags & SB_SILENT))
		FUNC5(fc, "MTD: Attempt to mount non-MTD device \"%s\"",
		       fc->source);
	return -EINVAL;
}