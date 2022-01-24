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
struct ubi_volume {int vol_id; TYPE_2__* eba_tbl; struct ubi_device* ubi; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {scalar_t__ vol_type; int copy_flag; void* data_crc; void* data_size; int /*<<< orphan*/  sqnum; } ;
struct ubi_device {int /*<<< orphan*/  fm_eba_sem; int /*<<< orphan*/  buf_mutex; scalar_t__ peb_buf; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_BITFLIPS ; 
 scalar_t__ UBI_VID_DYNAMIC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ubi_vid_hdr* FUNC8 (struct ubi_vid_io_buf*) ; 
 int FUNC9 (struct ubi_device*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct ubi_device*,int,struct ubi_vid_io_buf*,int) ; 
 int FUNC11 (struct ubi_device*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct ubi_device*,int,struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*,char*,int) ; 
 int FUNC16 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct ubi_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct ubi_volume *vol, int pnum, int lnum,
			   const void *buf, int offset, int len,
			   struct ubi_vid_io_buf *vidb, bool *retry)
{
	struct ubi_device *ubi = vol->ubi;
	struct ubi_vid_hdr *vid_hdr;
	int new_pnum, err, vol_id = vol->vol_id, data_size;
	uint32_t crc;

	*retry = false;

	new_pnum = FUNC16(ubi);
	if (new_pnum < 0) {
		err = new_pnum;
		goto out_put;
	}

	FUNC13(ubi, "recover PEB %d, move data to PEB %d",
		pnum, new_pnum);

	err = FUNC10(ubi, pnum, vidb, 1);
	if (err && err != UBI_IO_BITFLIPS) {
		if (err > 0)
			err = -EIO;
		goto out_put;
	}

	vid_hdr = FUNC8(vidb);
	FUNC7(vid_hdr->vol_type == UBI_VID_DYNAMIC);

	FUNC5(&ubi->buf_mutex);
	FUNC4(ubi->peb_buf + offset, 0xFF, len);

	/* Read everything before the area where the write failure happened */
	if (offset > 0) {
		err = FUNC9(ubi, ubi->peb_buf, pnum, 0, offset);
		if (err && err != UBI_IO_BITFLIPS)
			goto out_unlock;
	}

	*retry = true;

	FUNC3(ubi->peb_buf + offset, buf, len);

	data_size = offset + len;
	crc = FUNC2(UBI_CRC32_INIT, ubi->peb_buf, data_size);
	vid_hdr->sqnum = FUNC1(FUNC14(ubi));
	vid_hdr->copy_flag = 1;
	vid_hdr->data_size = FUNC0(data_size);
	vid_hdr->data_crc = FUNC0(crc);
	err = FUNC12(ubi, new_pnum, vidb);
	if (err)
		goto out_unlock;

	err = FUNC11(ubi, ubi->peb_buf, new_pnum, 0, data_size);

out_unlock:
	FUNC6(&ubi->buf_mutex);

	if (!err)
		vol->eba_tbl->entries[lnum].pnum = new_pnum;

out_put:
	FUNC18(&ubi->fm_eba_sem);

	if (!err) {
		FUNC17(ubi, vol_id, lnum, pnum, 1);
		FUNC13(ubi, "data was successfully recovered");
	} else if (new_pnum >= 0) {
		/*
		 * Bad luck? This physical eraseblock is bad too? Crud. Let's
		 * try to get another one.
		 */
		FUNC17(ubi, vol_id, lnum, new_pnum, 1);
		FUNC15(ubi, "failed to write to PEB %d", new_pnum);
	}

	return err;
}