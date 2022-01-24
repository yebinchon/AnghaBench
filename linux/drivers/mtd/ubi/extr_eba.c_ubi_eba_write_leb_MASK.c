#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubi_volume {int vol_id; int data_pad; TYPE_2__* eba_tbl; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {void* sqnum; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; int /*<<< orphan*/  vol_type; } ;
struct ubi_device {scalar_t__ bad_allowed; scalar_t__ ro_mode; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 int FUNC0 (struct ubi_device*,struct ubi_volume*,int,int*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int,int) ; 
 int FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,int,int) ; 
 int FUNC6 (struct ubi_device*,int,int,int,void const*,int,int) ; 
 int FUNC7 (struct ubi_volume*,int,struct ubi_vid_io_buf*,void const*,int,int) ; 
 struct ubi_vid_io_buf* FUNC8 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,int) ; 
 struct ubi_vid_hdr* FUNC11 (struct ubi_vid_io_buf*) ; 
 int FUNC12 (struct ubi_device*,void const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*,char*,int) ; 

int FUNC17(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
		      const void *buf, int offset, int len)
{
	int err, pnum, tries, vol_id = vol->vol_id;
	struct ubi_vid_io_buf *vidb;
	struct ubi_vid_hdr *vid_hdr;

	if (ubi->ro_mode)
		return -EROFS;

	err = FUNC4(ubi, vol_id, lnum);
	if (err)
		return err;

	pnum = vol->eba_tbl->entries[lnum].pnum;
	if (pnum >= 0) {
		err = FUNC0(ubi, vol, lnum, &pnum);
		if (err < 0)
			goto out;
	}

	if (pnum >= 0) {
		FUNC3("write %d bytes at offset %d of LEB %d:%d, PEB %d",
			len, offset, vol_id, lnum, pnum);

		err = FUNC12(ubi, buf, pnum, offset, len);
		if (err) {
			FUNC16(ubi, "failed to write data to PEB %d", pnum);
			if (err == -EIO && ubi->bad_allowed)
				err = FUNC6(ubi, pnum, vol_id, lnum, buf,
						  offset, len);
		}

		goto out;
	}

	/*
	 * The logical eraseblock is not mapped. We have to get a free physical
	 * eraseblock and write the volume identifier header there first.
	 */
	vidb = FUNC8(ubi, GFP_NOFS);
	if (!vidb) {
		FUNC5(ubi, vol_id, lnum);
		return -ENOMEM;
	}

	vid_hdr = FUNC11(vidb);

	vid_hdr->vol_type = UBI_VID_DYNAMIC;
	vid_hdr->sqnum = FUNC2(FUNC14(ubi));
	vid_hdr->vol_id = FUNC1(vol_id);
	vid_hdr->lnum = FUNC1(lnum);
	vid_hdr->compat = FUNC10(ubi, vol_id);
	vid_hdr->data_pad = FUNC1(vol->data_pad);

	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
		err = FUNC7(vol, lnum, vidb, buf, offset, len);
		if (err != -EIO || !ubi->bad_allowed)
			break;

		/*
		 * Fortunately, this is the first write operation to this
		 * physical eraseblock, so just put it and request a new one.
		 * We assume that if this physical eraseblock went bad, the
		 * erase code will handle that.
		 */
		vid_hdr->sqnum = FUNC2(FUNC14(ubi));
		FUNC13(ubi, "try another PEB");
	}

	FUNC9(vidb);

out:
	if (err)
		FUNC15(ubi);

	FUNC5(ubi, vol_id, lnum);

	return err;
}