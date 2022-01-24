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
struct ubi_vid_hdr {int /*<<< orphan*/  hdr_crc; } ;
struct ubi_device {int /*<<< orphan*/  vid_hdr_alsize; int /*<<< orphan*/  vid_hdr_aloffset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_BITFLIPS ; 
 int /*<<< orphan*/  UBI_VID_HDR_SIZE_CRC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ubi_device const*,int,struct ubi_vid_hdr*) ; 
 struct ubi_vid_io_buf* FUNC5 (struct ubi_device const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device const*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_vid_io_buf*) ; 
 struct ubi_vid_hdr* FUNC10 (struct ubi_vid_io_buf*) ; 
 int FUNC11 (struct ubi_device const*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(const struct ubi_device *ubi, int pnum)
{
	int err;
	uint32_t crc, hdr_crc;
	struct ubi_vid_io_buf *vidb;
	struct ubi_vid_hdr *vid_hdr;
	void *p;

	if (!FUNC6(ubi))
		return 0;

	vidb = FUNC5(ubi, GFP_NOFS);
	if (!vidb)
		return -ENOMEM;

	vid_hdr = FUNC10(vidb);
	p = vidb->buffer;
	err = FUNC11(ubi, p, pnum, ubi->vid_hdr_aloffset,
			  ubi->vid_hdr_alsize);
	if (err && err != UBI_IO_BITFLIPS && !FUNC3(err))
		goto exit;

	crc = FUNC1(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
	hdr_crc = FUNC0(vid_hdr->hdr_crc);
	if (hdr_crc != crc) {
		FUNC8(ubi, "bad VID header CRC at PEB %d, calculated %#08x, read %#08x",
			pnum, crc, hdr_crc);
		FUNC8(ubi, "self-check failed for PEB %d", pnum);
		FUNC7(vid_hdr);
		FUNC2();
		err = -EINVAL;
		goto exit;
	}

	err = FUNC4(ubi, pnum, vid_hdr);

exit:
	FUNC9(vidb);
	return err;
}