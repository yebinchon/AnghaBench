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
typedef  int uint8_t ;
struct ubi_device {int peb_count; int peb_size; int /*<<< orphan*/  mtd; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int UBI_IO_BITFLIPS ; 
 int /*<<< orphan*/  UBI_IO_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,size_t*,void*) ; 
 int FUNC6 (struct ubi_device const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device const*,char*,int,char const*,int,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device const*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device const*,char*,int,char const*,int,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(const struct ubi_device *ubi, void *buf, int pnum, int offset,
		int len)
{
	int err, retries = 0;
	size_t read;
	loff_t addr;

	FUNC1("read %d bytes from PEB %d:%d", len, pnum, offset);

	FUNC7(pnum >= 0 && pnum < ubi->peb_count);
	FUNC7(offset >= 0 && offset + len <= ubi->peb_size);
	FUNC7(len > 0);

	err = FUNC6(ubi, pnum);
	if (err)
		return err;

	/*
	 * Deliberately corrupt the buffer to improve robustness. Indeed, if we
	 * do not do this, the following may happen:
	 * 1. The buffer contains data from previous operation, e.g., read from
	 *    another PEB previously. The data looks like expected, e.g., if we
	 *    just do not read anything and return - the caller would not
	 *    notice this. E.g., if we are reading a VID header, the buffer may
	 *    contain a valid VID header from another PEB.
	 * 2. The driver is buggy and returns us success or -EBADMSG or
	 *    -EUCLEAN, but it does not actually put any data to the buffer.
	 *
	 * This may confuse UBI or upper layers - they may think the buffer
	 * contains valid data while in fact it is just old data. This is
	 * especially possible because UBI (and UBIFS) relies on CRC, and
	 * treats data as correct even in case of ECC errors if the CRC is
	 * correct.
	 *
	 * Try to prevent this situation by changing the first byte of the
	 * buffer.
	 */
	*((uint8_t *)buf) ^= 0xFF;

	addr = (loff_t)pnum * ubi->peb_size + offset;
retry:
	err = FUNC5(ubi->mtd, addr, len, &read, buf);
	if (err) {
		const char *errstr = FUNC4(err) ? " (ECC error)" : "";

		if (FUNC3(err)) {
			/*
			 * -EUCLEAN is reported if there was a bit-flip which
			 * was corrected, so this is harmless.
			 *
			 * We do not report about it here unless debugging is
			 * enabled. A corresponding message will be printed
			 * later, when it is has been scrubbed.
			 */
			FUNC10(ubi, "fixable bit-flip detected at PEB %d",
				pnum);
			FUNC7(len == read);
			return UBI_IO_BITFLIPS;
		}

		if (retries++ < UBI_IO_RETRIES) {
			FUNC11(ubi, "error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry",
				 err, errstr, len, pnum, offset, read);
			FUNC12();
			goto retry;
		}

		FUNC9(ubi, "error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes",
			err, errstr, len, pnum, offset, read);
		FUNC2();

		/*
		 * The driver should never return -EBADMSG if it failed to read
		 * all the requested data. But some buggy drivers might do
		 * this, so we change it to -EIO.
		 */
		if (read != len && FUNC4(err)) {
			FUNC7(0);
			err = -EIO;
		}
	} else {
		FUNC7(len == read);

		if (FUNC8(ubi)) {
			FUNC0("bit-flip (emulated)");
			err = UBI_IO_BITFLIPS;
		}
	}

	return err;
}