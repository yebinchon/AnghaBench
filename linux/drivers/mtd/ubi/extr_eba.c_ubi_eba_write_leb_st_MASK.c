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
typedef  int uint32_t ;
struct ubi_volume {int vol_id; int data_pad; TYPE_2__* eba_tbl; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {void* sqnum; void* data_crc; void* used_ebs; void* data_size; int /*<<< orphan*/  vol_type; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; } ;
struct ubi_device {int /*<<< orphan*/  bad_allowed; int /*<<< orphan*/  min_io_size; scalar_t__ ro_mode; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ pnum; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_STATIC ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,int,int) ; 
 int FUNC6 (struct ubi_volume*,int,struct ubi_vid_io_buf*,void const*,int /*<<< orphan*/ ,int) ; 
 struct ubi_vid_io_buf* FUNC7 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,int) ; 
 struct ubi_vid_hdr* FUNC11 (struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 

int FUNC15(struct ubi_device *ubi, struct ubi_volume *vol,
			 int lnum, const void *buf, int len, int used_ebs)
{
	int err, tries, data_size = len, vol_id = vol->vol_id;
	struct ubi_vid_io_buf *vidb;
	struct ubi_vid_hdr *vid_hdr;
	uint32_t crc;

	if (ubi->ro_mode)
		return -EROFS;

	if (lnum == used_ebs - 1)
		/* If this is the last LEB @len may be unaligned */
		len = FUNC0(data_size, ubi->min_io_size);
	else
		FUNC8(!(len & (ubi->min_io_size - 1)));

	vidb = FUNC7(ubi, GFP_NOFS);
	if (!vidb)
		return -ENOMEM;

	vid_hdr = FUNC11(vidb);

	err = FUNC4(ubi, vol_id, lnum);
	if (err)
		goto out;

	vid_hdr->sqnum = FUNC2(FUNC13(ubi));
	vid_hdr->vol_id = FUNC1(vol_id);
	vid_hdr->lnum = FUNC1(lnum);
	vid_hdr->compat = FUNC10(ubi, vol_id);
	vid_hdr->data_pad = FUNC1(vol->data_pad);

	crc = FUNC3(UBI_CRC32_INIT, buf, data_size);
	vid_hdr->vol_type = UBI_VID_STATIC;
	vid_hdr->data_size = FUNC1(data_size);
	vid_hdr->used_ebs = FUNC1(used_ebs);
	vid_hdr->data_crc = FUNC1(crc);

	FUNC8(vol->eba_tbl->entries[lnum].pnum < 0);

	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
		err = FUNC6(vol, lnum, vidb, buf, 0, len);
		if (err != -EIO || !ubi->bad_allowed)
			break;

		vid_hdr->sqnum = FUNC2(FUNC13(ubi));
		FUNC12(ubi, "try another PEB");
	}

	if (err)
		FUNC14(ubi);

	FUNC5(ubi, vol_id, lnum);

out:
	FUNC9(vidb);

	return err;
}