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
typedef  scalar_t__ uint32_t ;
struct ubi_ec_hdr {int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  magic; } ;
struct ubi_device {int peb_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 scalar_t__ UBI_EC_HDR_MAGIC ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE_CRC ; 
 int UBI_IO_BAD_HDR ; 
 int UBI_IO_BAD_HDR_EBADMSG ; 
 int UBI_IO_BITFLIPS ; 
 int UBI_IO_FF ; 
 int UBI_IO_FF_BITFLIPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct ubi_ec_hdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int) ; 
 int FUNC9 (struct ubi_device*,struct ubi_ec_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,char*,int,...) ; 
 int FUNC11 (struct ubi_device*,struct ubi_ec_hdr*) ; 

int FUNC12(struct ubi_device *ubi, int pnum,
		       struct ubi_ec_hdr *ec_hdr, int verbose)
{
	int err, read_err;
	uint32_t crc, magic, hdr_crc;

	FUNC3("read EC header from PEB %d", pnum);
	FUNC5(pnum >= 0 && pnum < ubi->peb_count);

	read_err = FUNC9(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
	if (read_err) {
		if (read_err != UBI_IO_BITFLIPS && !FUNC4(read_err))
			return read_err;

		/*
		 * We read all the data, but either a correctable bit-flip
		 * occurred, or MTD reported a data integrity error
		 * (uncorrectable ECC error in case of NAND). The former is
		 * harmless, the later may mean that the read data is
		 * corrupted. But we have a CRC check-sum and we will detect
		 * this. If the EC header is still OK, we just report this as
		 * there was a bit-flip, to force scrubbing.
		 */
	}

	magic = FUNC0(ec_hdr->magic);
	if (magic != UBI_EC_HDR_MAGIC) {
		if (FUNC4(read_err))
			return UBI_IO_BAD_HDR_EBADMSG;

		/*
		 * The magic field is wrong. Let's check if we have read all
		 * 0xFF. If yes, this physical eraseblock is assumed to be
		 * empty.
		 */
		if (FUNC6(ec_hdr, 0xFF, UBI_EC_HDR_SIZE)) {
			/* The physical eraseblock is supposedly empty */
			if (verbose)
				FUNC10(ubi, "no EC header found at PEB %d, only 0xFF bytes",
					 pnum);
			FUNC2("no EC header found at PEB %d, only 0xFF bytes",
				pnum);
			if (!read_err)
				return UBI_IO_FF;
			else
				return UBI_IO_FF_BITFLIPS;
		}

		/*
		 * This is not a valid erase counter header, and these are not
		 * 0xFF bytes. Report that the header is corrupted.
		 */
		if (verbose) {
			FUNC10(ubi, "bad magic number at PEB %d: %08x instead of %08x",
				 pnum, magic, UBI_EC_HDR_MAGIC);
			FUNC7(ec_hdr);
		}
		FUNC2("bad magic number at PEB %d: %08x instead of %08x",
			pnum, magic, UBI_EC_HDR_MAGIC);
		return UBI_IO_BAD_HDR;
	}

	crc = FUNC1(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
	hdr_crc = FUNC0(ec_hdr->hdr_crc);

	if (hdr_crc != crc) {
		if (verbose) {
			FUNC10(ubi, "bad EC header CRC at PEB %d, calculated %#08x, read %#08x",
				 pnum, crc, hdr_crc);
			FUNC7(ec_hdr);
		}
		FUNC2("bad EC header CRC at PEB %d, calculated %#08x, read %#08x",
			pnum, crc, hdr_crc);

		if (!read_err)
			return UBI_IO_BAD_HDR;
		else
			return UBI_IO_BAD_HDR_EBADMSG;
	}

	/* And of course validate what has just been read from the media */
	err = FUNC11(ubi, ec_hdr);
	if (err) {
		FUNC8(ubi, "validation failed for PEB %d", pnum);
		return -EINVAL;
	}

	/*
	 * If there was %-EBADMSG, but the header CRC is still OK, report about
	 * a bit-flip to force scrubbing on this PEB.
	 */
	return read_err ? UBI_IO_BITFLIPS : 0;
}