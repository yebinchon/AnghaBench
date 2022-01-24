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
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int dummy; } ;
struct ubi_ec_hdr {int dummy; } ;
struct ubi_device {int peb_size; int /*<<< orphan*/  mtd; scalar_t__ vid_hdr_aloffset; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int UBI_IO_BAD_HDR ; 
 int UBI_IO_BAD_HDR_EBADMSG ; 
 int UBI_IO_FF ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,char*,int,int) ; 
 struct ubi_vid_hdr* FUNC4 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,struct ubi_vid_io_buf*,struct ubi_vid_hdr*) ; 
 int FUNC6 (struct ubi_device*,int,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubi_device*,int,struct ubi_vid_io_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ubi_device *ubi, int pnum)
{
	int err;
	size_t written;
	loff_t addr;
	uint32_t data = 0;
	struct ubi_ec_hdr ec_hdr;
	struct ubi_vid_io_buf vidb;

	/*
	 * Note, we cannot generally define VID header buffers on stack,
	 * because of the way we deal with these buffers (see the header
	 * comment in this file). But we know this is a NOR-specific piece of
	 * code, so we can do this. But yes, this is error-prone and we should
	 * (pre-)allocate VID header buffer instead.
	 */
	struct ubi_vid_hdr vid_hdr;

	/*
	 * If VID or EC is valid, we have to corrupt them before erasing.
	 * It is important to first invalidate the EC header, and then the VID
	 * header. Otherwise a power cut may lead to valid EC header and
	 * invalid VID header, in which case UBI will treat this PEB as
	 * corrupted and will try to preserve it, and print scary warnings.
	 */
	addr = (loff_t)pnum * ubi->peb_size;
	err = FUNC6(ubi, pnum, &ec_hdr, 0);
	if (err != UBI_IO_BAD_HDR_EBADMSG && err != UBI_IO_BAD_HDR &&
	    err != UBI_IO_FF){
		err = FUNC0(ubi->mtd, addr, 4, &written, (void *)&data);
		if(err)
			goto error;
	}

	FUNC5(ubi, &vidb, &vid_hdr);
	FUNC1(&vid_hdr == FUNC4(&vidb));

	err = FUNC7(ubi, pnum, &vidb, 0);
	if (err != UBI_IO_BAD_HDR_EBADMSG && err != UBI_IO_BAD_HDR &&
	    err != UBI_IO_FF){
		addr += ubi->vid_hdr_aloffset;
		err = FUNC0(ubi->mtd, addr, 4, &written, (void *)&data);
		if (err)
			goto error;
	}
	return 0;

error:
	/*
	 * The PEB contains a valid VID or EC header, but we cannot invalidate
	 * it. Supposedly the flash media or the driver is screwed up, so
	 * return an error.
	 */
	FUNC3(ubi, "cannot invalidate PEB %d, write returned %d", pnum, err);
	FUNC2(ubi, pnum, 0, ubi->peb_size);
	return -EIO;
}