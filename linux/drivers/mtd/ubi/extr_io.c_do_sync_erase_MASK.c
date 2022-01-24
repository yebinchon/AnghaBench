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
struct ubi_device {int peb_count; int peb_size; int /*<<< orphan*/  mtd; scalar_t__ ro_mode; } ;
struct erase_info {int addr; int len; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  UBI_IO_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct erase_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,char*,...) ; 
 int FUNC7 (struct ubi_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct ubi_device *ubi, int pnum)
{
	int err, retries = 0;
	struct erase_info ei;

	FUNC0("erase PEB %d", pnum);
	FUNC4(pnum >= 0 && pnum < ubi->peb_count);

	if (ubi->ro_mode) {
		FUNC6(ubi, "read-only mode");
		return -EROFS;
	}

retry:
	FUNC2(&ei, 0, sizeof(struct erase_info));

	ei.addr     = (loff_t)pnum * ubi->peb_size;
	ei.len      = ubi->peb_size;

	err = FUNC3(ubi->mtd, &ei);
	if (err) {
		if (retries++ < UBI_IO_RETRIES) {
			FUNC8(ubi, "error %d while erasing PEB %d, retry",
				 err, pnum);
			FUNC9();
			goto retry;
		}
		FUNC6(ubi, "cannot erase PEB %d, error %d", pnum, err);
		FUNC1();
		return err;
	}

	err = FUNC7(ubi, pnum, 0, ubi->peb_size);
	if (err)
		return err;

	if (FUNC5(ubi)) {
		FUNC6(ubi, "cannot erase PEB %d (emulated)", pnum);
		return -EIO;
	}

	return 0;
}