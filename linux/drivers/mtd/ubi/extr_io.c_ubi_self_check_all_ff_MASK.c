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
struct ubi_device {int peb_size; int /*<<< orphan*/  mtd; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,void*,int,int) ; 
 int FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

int FUNC10(struct ubi_device *ubi, int pnum, int offset, int len)
{
	size_t read;
	int err;
	void *buf;
	loff_t addr = (loff_t)pnum * ubi->peb_size + offset;

	if (!FUNC6(ubi))
		return 0;

	buf = FUNC0(len, GFP_NOFS, PAGE_KERNEL);
	if (!buf) {
		FUNC7(ubi, "cannot allocate memory to check for 0xFFs");
		return 0;
	}

	err = FUNC3(ubi->mtd, addr, len, &read, buf);
	if (err && !FUNC2(err)) {
		FUNC7(ubi, "err %d while reading %d bytes from PEB %d:%d, read %zd bytes",
			err, len, pnum, offset, read);
		goto error;
	}

	err = FUNC5(buf, 0xFF, len);
	if (err == 0) {
		FUNC7(ubi, "flash region at PEB %d:%d, length %d does not contain all 0xFF bytes",
			pnum, offset, len);
		goto fail;
	}

	FUNC9(buf);
	return 0;

fail:
	FUNC7(ubi, "self-check failed for PEB %d", pnum);
	FUNC8(ubi, "hex dump of the %d-%d region", offset, offset + len);
	FUNC4(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
	err = -EINVAL;
error:
	FUNC1();
	FUNC9(buf);
	return err;
}