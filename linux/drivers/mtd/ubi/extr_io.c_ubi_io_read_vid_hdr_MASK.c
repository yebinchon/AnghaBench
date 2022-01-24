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
struct ubi_vid_io_buf {void* buffer; } ;
struct ubi_vid_hdr {int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  magic; } ;
struct ubi_device {int peb_count; scalar_t__ vid_hdr_shift; int /*<<< orphan*/  vid_hdr_aloffset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_BAD_HDR ; 
 int UBI_IO_BAD_HDR_EBADMSG ; 
 int UBI_IO_BITFLIPS ; 
 int UBI_IO_FF ; 
 int UBI_IO_FF_BITFLIPS ; 
 scalar_t__ UBI_VID_HDR_MAGIC ; 
 scalar_t__ UBI_VID_HDR_SIZE ; 
 int /*<<< orphan*/  UBI_VID_HDR_SIZE_CRC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct ubi_vid_hdr*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int) ; 
 struct ubi_vid_hdr* FUNC9 (struct ubi_vid_io_buf*) ; 
 int FUNC10 (struct ubi_device*,void*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*,char*,int,...) ; 
 int FUNC12 (struct ubi_device*,struct ubi_vid_hdr*) ; 

int FUNC13(struct ubi_device *ubi, int pnum,
			struct ubi_vid_io_buf *vidb, int verbose)
{
	int err, read_err;
	uint32_t crc, magic, hdr_crc;
	struct ubi_vid_hdr *vid_hdr = FUNC9(vidb);
	void *p = vidb->buffer;

	FUNC3("read VID header from PEB %d", pnum);
	FUNC5(pnum >= 0 &&  pnum < ubi->peb_count);

	read_err = FUNC10(ubi, p, pnum, ubi->vid_hdr_aloffset,
			  ubi->vid_hdr_shift + UBI_VID_HDR_SIZE);
	if (read_err && read_err != UBI_IO_BITFLIPS && !FUNC4(read_err))
		return read_err;

	magic = FUNC0(vid_hdr->magic);
	if (magic != UBI_VID_HDR_MAGIC) {
		if (FUNC4(read_err))
			return UBI_IO_BAD_HDR_EBADMSG;

		if (FUNC6(vid_hdr, 0xFF, UBI_VID_HDR_SIZE)) {
			if (verbose)
				FUNC11(ubi, "no VID header found at PEB %d, only 0xFF bytes",
					 pnum);
			FUNC2("no VID header found at PEB %d, only 0xFF bytes",
				pnum);
			if (!read_err)
				return UBI_IO_FF;
			else
				return UBI_IO_FF_BITFLIPS;
		}

		if (verbose) {
			FUNC11(ubi, "bad magic number at PEB %d: %08x instead of %08x",
				 pnum, magic, UBI_VID_HDR_MAGIC);
			FUNC7(vid_hdr);
		}
		FUNC2("bad magic number at PEB %d: %08x instead of %08x",
			pnum, magic, UBI_VID_HDR_MAGIC);
		return UBI_IO_BAD_HDR;
	}

	crc = FUNC1(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
	hdr_crc = FUNC0(vid_hdr->hdr_crc);

	if (hdr_crc != crc) {
		if (verbose) {
			FUNC11(ubi, "bad CRC at PEB %d, calculated %#08x, read %#08x",
				 pnum, crc, hdr_crc);
			FUNC7(vid_hdr);
		}
		FUNC2("bad CRC at PEB %d, calculated %#08x, read %#08x",
			pnum, crc, hdr_crc);
		if (!read_err)
			return UBI_IO_BAD_HDR;
		else
			return UBI_IO_BAD_HDR_EBADMSG;
	}

	err = FUNC12(ubi, vid_hdr);
	if (err) {
		FUNC8(ubi, "validation failed for PEB %d", pnum);
		return -EINVAL;
	}

	return read_err ? UBI_IO_BITFLIPS : 0;
}