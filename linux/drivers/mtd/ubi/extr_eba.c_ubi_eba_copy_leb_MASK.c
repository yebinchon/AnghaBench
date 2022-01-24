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
struct ubi_volume {TYPE_2__* eba_tbl; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {scalar_t__ vol_type; int copy_flag; int /*<<< orphan*/  sqnum; void* data_crc; void* data_size; void* data_pad; void* lnum; void* vol_id; } ;
struct ubi_device {int leb_size; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  peb_buf; int /*<<< orphan*/  volumes_lock; struct ubi_volume** volumes; int /*<<< orphan*/  min_io_size; int /*<<< orphan*/  fm_eba_sem; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int MOVE_CANCEL_RACE ; 
 int MOVE_RETRY ; 
 int MOVE_SOURCE_RD_ERR ; 
 int MOVE_TARGET_BITFLIPS ; 
 int MOVE_TARGET_RD_ERR ; 
 int MOVE_TARGET_WR_ERR ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_BITFLIPS ; 
 scalar_t__ UBI_VID_DYNAMIC ; 
 scalar_t__ UBI_VID_STATIC ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct ubi_device*,int /*<<< orphan*/ ,int) ; 
 struct ubi_vid_hdr* FUNC17 (struct ubi_vid_io_buf*) ; 
 int FUNC18 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct ubi_device*,int,struct ubi_vid_io_buf*,int) ; 
 int FUNC20 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct ubi_device*,int,struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC22 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct ubi_device*,char*,int,int) ; 
 int FUNC24 (struct ubi_device*,int) ; 

int FUNC25(struct ubi_device *ubi, int from, int to,
		     struct ubi_vid_io_buf *vidb)
{
	int err, vol_id, lnum, data_size, aldata_size, idx;
	struct ubi_vid_hdr *vid_hdr = FUNC17(vidb);
	struct ubi_volume *vol;
	uint32_t crc;

	FUNC15(FUNC12(&ubi->fm_eba_sem));

	vol_id = FUNC1(vid_hdr->vol_id);
	lnum = FUNC1(vid_hdr->lnum);

	FUNC6("copy LEB %d:%d, PEB %d to PEB %d", vol_id, lnum, from, to);

	if (vid_hdr->vol_type == UBI_VID_STATIC) {
		data_size = FUNC1(vid_hdr->data_size);
		aldata_size = FUNC0(data_size, ubi->min_io_size);
	} else
		data_size = aldata_size =
			    ubi->leb_size - FUNC1(vid_hdr->data_pad);

	idx = FUNC24(ubi, vol_id);
	FUNC13(&ubi->volumes_lock);
	/*
	 * Note, we may race with volume deletion, which means that the volume
	 * this logical eraseblock belongs to might be being deleted. Since the
	 * volume deletion un-maps all the volume's logical eraseblocks, it will
	 * be locked in 'ubi_wl_put_peb()' and wait for the WL worker to finish.
	 */
	vol = ubi->volumes[idx];
	FUNC14(&ubi->volumes_lock);
	if (!vol) {
		/* No need to do further work, cancel */
		FUNC6("volume %d is being removed, cancel", vol_id);
		return MOVE_CANCEL_RACE;
	}

	/*
	 * We do not want anybody to write to this logical eraseblock while we
	 * are moving it, so lock it.
	 *
	 * Note, we are using non-waiting locking here, because we cannot sleep
	 * on the LEB, since it may cause deadlocks. Indeed, imagine a task is
	 * unmapping the LEB which is mapped to the PEB we are going to move
	 * (@from). This task locks the LEB and goes sleep in the
	 * 'ubi_wl_put_peb()' function on the @ubi->move_mutex. In turn, we are
	 * holding @ubi->move_mutex and go sleep on the LEB lock. So, if the
	 * LEB is already locked, we just do not move it and return
	 * %MOVE_RETRY. Note, we do not return %MOVE_CANCEL_RACE here because
	 * we do not know the reasons of the contention - it may be just a
	 * normal I/O on this LEB, so we want to re-try.
	 */
	err = FUNC8(ubi, vol_id, lnum);
	if (err) {
		FUNC6("contention on LEB %d:%d, cancel", vol_id, lnum);
		return MOVE_RETRY;
	}

	/*
	 * The LEB might have been put meanwhile, and the task which put it is
	 * probably waiting on @ubi->move_mutex. No need to continue the work,
	 * cancel it.
	 */
	if (vol->eba_tbl->entries[lnum].pnum != from) {
		FUNC6("LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel",
		       vol_id, lnum, from, vol->eba_tbl->entries[lnum].pnum);
		err = MOVE_CANCEL_RACE;
		goto out_unlock_leb;
	}

	/*
	 * OK, now the LEB is locked and we can safely start moving it. Since
	 * this function utilizes the @ubi->peb_buf buffer which is shared
	 * with some other functions - we lock the buffer by taking the
	 * @ubi->buf_mutex.
	 */
	FUNC10(&ubi->buf_mutex);
	FUNC6("read %d bytes of data", aldata_size);
	err = FUNC18(ubi, ubi->peb_buf, from, 0, aldata_size);
	if (err && err != UBI_IO_BITFLIPS) {
		FUNC23(ubi, "error %d while reading data from PEB %d",
			 err, from);
		err = MOVE_SOURCE_RD_ERR;
		goto out_unlock_buf;
	}

	/*
	 * Now we have got to calculate how much data we have to copy. In
	 * case of a static volume it is fairly easy - the VID header contains
	 * the data size. In case of a dynamic volume it is more difficult - we
	 * have to read the contents, cut 0xFF bytes from the end and copy only
	 * the first part. We must do this to avoid writing 0xFF bytes as it
	 * may have some side-effects. And not only this. It is important not
	 * to include those 0xFFs to CRC because later the they may be filled
	 * by data.
	 */
	if (vid_hdr->vol_type == UBI_VID_DYNAMIC)
		aldata_size = data_size =
			FUNC16(ubi, ubi->peb_buf, data_size);

	FUNC2();
	crc = FUNC5(UBI_CRC32_INIT, ubi->peb_buf, data_size);
	FUNC2();

	/*
	 * It may turn out to be that the whole @from physical eraseblock
	 * contains only 0xFF bytes. Then we have to only write the VID header
	 * and do not write any data. This also means we should not set
	 * @vid_hdr->copy_flag, @vid_hdr->data_size, and @vid_hdr->data_crc.
	 */
	if (data_size > 0) {
		vid_hdr->copy_flag = 1;
		vid_hdr->data_size = FUNC3(data_size);
		vid_hdr->data_crc = FUNC3(crc);
	}
	vid_hdr->sqnum = FUNC4(FUNC22(ubi));

	err = FUNC21(ubi, to, vidb);
	if (err) {
		if (err == -EIO)
			err = MOVE_TARGET_WR_ERR;
		goto out_unlock_buf;
	}

	FUNC2();

	/* Read the VID header back and check if it was written correctly */
	err = FUNC19(ubi, to, vidb, 1);
	if (err) {
		if (err != UBI_IO_BITFLIPS) {
			FUNC23(ubi, "error %d while reading VID header back from PEB %d",
				 err, to);
			if (FUNC7(err))
				err = MOVE_TARGET_RD_ERR;
		} else
			err = MOVE_TARGET_BITFLIPS;
		goto out_unlock_buf;
	}

	if (data_size > 0) {
		err = FUNC20(ubi, ubi->peb_buf, to, 0, aldata_size);
		if (err) {
			if (err == -EIO)
				err = MOVE_TARGET_WR_ERR;
			goto out_unlock_buf;
		}

		FUNC2();
	}

	FUNC15(vol->eba_tbl->entries[lnum].pnum == from);
	vol->eba_tbl->entries[lnum].pnum = to;

out_unlock_buf:
	FUNC11(&ubi->buf_mutex);
out_unlock_leb:
	FUNC9(ubi, vol_id, lnum);
	return err;
}