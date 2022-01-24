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
typedef  int uint32_t ;
struct ubi_volume {int vol_id; int data_pad; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int copy_flag; void* sqnum; void* data_crc; void* data_size; int /*<<< orphan*/  vol_type; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; } ;
struct ubi_device {int /*<<< orphan*/  alc_mutex; int /*<<< orphan*/  bad_allowed; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubi_volume*,int,struct ubi_vid_io_buf*,void const*,int /*<<< orphan*/ ,int) ; 
 struct ubi_vid_io_buf* FUNC9 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubi_device*,struct ubi_volume*,int) ; 
 int FUNC11 (struct ubi_device*,struct ubi_volume*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,int) ; 
 struct ubi_vid_hdr* FUNC14 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct ubi_device*) ; 

int FUNC18(struct ubi_device *ubi, struct ubi_volume *vol,
			      int lnum, const void *buf, int len)
{
	int err, tries, vol_id = vol->vol_id;
	struct ubi_vid_io_buf *vidb;
	struct ubi_vid_hdr *vid_hdr;
	uint32_t crc;

	if (ubi->ro_mode)
		return -EROFS;

	if (len == 0) {
		/*
		 * Special case when data length is zero. In this case the LEB
		 * has to be unmapped and mapped somewhere else.
		 */
		err = FUNC10(ubi, vol, lnum);
		if (err)
			return err;
		return FUNC11(ubi, vol, lnum, NULL, 0, 0);
	}

	vidb = FUNC9(ubi, GFP_NOFS);
	if (!vidb)
		return -ENOMEM;

	vid_hdr = FUNC14(vidb);

	FUNC6(&ubi->alc_mutex);
	err = FUNC4(ubi, vol_id, lnum);
	if (err)
		goto out_mutex;

	vid_hdr->sqnum = FUNC1(FUNC16(ubi));
	vid_hdr->vol_id = FUNC0(vol_id);
	vid_hdr->lnum = FUNC0(lnum);
	vid_hdr->compat = FUNC13(ubi, vol_id);
	vid_hdr->data_pad = FUNC0(vol->data_pad);

	crc = FUNC2(UBI_CRC32_INIT, buf, len);
	vid_hdr->vol_type = UBI_VID_DYNAMIC;
	vid_hdr->data_size = FUNC0(len);
	vid_hdr->copy_flag = 1;
	vid_hdr->data_crc = FUNC0(crc);

	FUNC3("change LEB %d:%d", vol_id, lnum);

	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
		err = FUNC8(vol, lnum, vidb, buf, 0, len);
		if (err != -EIO || !ubi->bad_allowed)
			break;

		vid_hdr->sqnum = FUNC1(FUNC16(ubi));
		FUNC15(ubi, "try another PEB");
	}

	/*
	 * This flash device does not admit of bad eraseblocks or
	 * something nasty and unexpected happened. Switch to read-only
	 * mode just in case.
	 */
	if (err)
		FUNC17(ubi);

	FUNC5(ubi, vol_id, lnum);

out_mutex:
	FUNC7(&ubi->alc_mutex);
	FUNC12(vidb);
	return err;
}