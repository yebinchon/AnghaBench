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
struct ubi_device {int peb_count; int peb_size; int hdrs_min_io_size; int leb_start; int /*<<< orphan*/  mtd; scalar_t__ ro_mode; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,size_t*,void const*) ; 
 int FUNC3 (struct ubi_device*,int) ; 
 int FUNC4 (struct ubi_device*,int) ; 
 int FUNC5 (struct ubi_device*,int) ; 
 int FUNC6 (struct ubi_device*,void const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,char*,...) ; 
 int FUNC11 (struct ubi_device*,int,int,int) ; 

int FUNC12(struct ubi_device *ubi, const void *buf, int pnum, int offset,
		 int len)
{
	int err;
	size_t written;
	loff_t addr;

	FUNC0("write %d bytes to PEB %d:%d", len, pnum, offset);

	FUNC7(pnum >= 0 && pnum < ubi->peb_count);
	FUNC7(offset >= 0 && offset + len <= ubi->peb_size);
	FUNC7(offset % ubi->hdrs_min_io_size == 0);
	FUNC7(len > 0 && len % ubi->hdrs_min_io_size == 0);

	if (ubi->ro_mode) {
		FUNC10(ubi, "read-only mode");
		return -EROFS;
	}

	err = FUNC3(ubi, pnum);
	if (err)
		return err;

	/* The area we are writing to has to contain all 0xFF bytes */
	err = FUNC11(ubi, pnum, offset, len);
	if (err)
		return err;

	if (offset >= ubi->leb_start) {
		/*
		 * We write to the data area of the physical eraseblock. Make
		 * sure it has valid EC and VID headers.
		 */
		err = FUNC4(ubi, pnum);
		if (err)
			return err;
		err = FUNC5(ubi, pnum);
		if (err)
			return err;
	}

	if (FUNC8(ubi)) {
		FUNC10(ubi, "cannot write %d bytes to PEB %d:%d (emulated)",
			len, pnum, offset);
		FUNC1();
		return -EIO;
	}

	addr = (loff_t)pnum * ubi->peb_size + offset;
	err = FUNC2(ubi->mtd, addr, len, &written, buf);
	if (err) {
		FUNC10(ubi, "error %d while writing %d bytes to PEB %d:%d, written %zd bytes",
			err, len, pnum, offset, written);
		FUNC1();
		FUNC9(ubi, pnum, offset, len);
	} else
		FUNC7(written == len);

	if (!err) {
		err = FUNC6(ubi, buf, pnum, offset, len);
		if (err)
			return err;

		/*
		 * Since we always write sequentially, the rest of the PEB has
		 * to contain only 0xFF bytes.
		 */
		offset += len;
		len = ubi->peb_size - offset;
		if (len)
			err = FUNC11(ubi, pnum, offset, len);
	}

	return err;
}