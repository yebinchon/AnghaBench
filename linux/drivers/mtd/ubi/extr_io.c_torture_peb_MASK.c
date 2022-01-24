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
struct ubi_device {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  peb_size; int /*<<< orphan*/  peb_buf; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EIO ; 
 int UBI_IO_BITFLIPS ; 
 int FUNC1 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* patterns ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int,...) ; 
 int FUNC9 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct ubi_device *ubi, int pnum)
{
	int err, i, patt_count;

	FUNC11(ubi, "run torture test for PEB %d", pnum);
	patt_count = FUNC0(patterns);
	FUNC6(patt_count > 0);

	FUNC4(&ubi->buf_mutex);
	for (i = 0; i < patt_count; i++) {
		err = FUNC1(ubi, pnum);
		if (err)
			goto out;

		/* Make sure the PEB contains only 0xFF bytes */
		err = FUNC9(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		err = FUNC7(ubi->peb_buf, 0xFF, ubi->peb_size);
		if (err == 0) {
			FUNC8(ubi, "erased PEB %d, but a non-0xFF byte found",
				pnum);
			err = -EIO;
			goto out;
		}

		/* Write a pattern and check it */
		FUNC2(ubi->peb_buf, patterns[i], ubi->peb_size);
		err = FUNC10(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		FUNC2(ubi->peb_buf, ~patterns[i], ubi->peb_size);
		err = FUNC9(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		err = FUNC7(ubi->peb_buf, patterns[i],
					ubi->peb_size);
		if (err == 0) {
			FUNC8(ubi, "pattern %x checking failed for PEB %d",
				patterns[i], pnum);
			err = -EIO;
			goto out;
		}
	}

	err = patt_count;
	FUNC11(ubi, "PEB %d passed torture test, do not mark it as bad", pnum);

out:
	FUNC5(&ubi->buf_mutex);
	if (err == UBI_IO_BITFLIPS || FUNC3(err)) {
		/*
		 * If a bit-flip or data integrity error was detected, the test
		 * has not passed because it happened on a freshly erased
		 * physical eraseblock which means something is wrong with it.
		 */
		FUNC8(ubi, "read problems on freshly erased PEB %d, must be bad",
			pnum);
		err = -EIO;
	}
	return err;
}