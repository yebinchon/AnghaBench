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
struct ubi_volume {int vol_id; TYPE_2__* eba_tbl; struct ubi_device* ubi; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_device {int /*<<< orphan*/  fm_eba_sem; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int) ; 
 int FUNC1 (struct ubi_device*,void const*,int,int,int) ; 
 int FUNC2 (struct ubi_device*,int,struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,char*,int,int,int,...) ; 
 int FUNC4 (struct ubi_device*) ; 
 int FUNC5 (struct ubi_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ubi_volume *vol, int lnum,
				  struct ubi_vid_io_buf *vidb, const void *buf,
				  int offset, int len)
{
	struct ubi_device *ubi = vol->ubi;
	int pnum, opnum, err, vol_id = vol->vol_id;

	pnum = FUNC4(ubi);
	if (pnum < 0) {
		err = pnum;
		goto out_put;
	}

	opnum = vol->eba_tbl->entries[lnum].pnum;

	FUNC0("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
		len, offset, vol_id, lnum, pnum);

	err = FUNC2(ubi, pnum, vidb);
	if (err) {
		FUNC3(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
			 vol_id, lnum, pnum);
		goto out_put;
	}

	if (len) {
		err = FUNC1(ubi, buf, pnum, offset, len);
		if (err) {
			FUNC3(ubi,
				 "failed to write %d bytes at offset %d of LEB %d:%d, PEB %d",
				 len, offset, vol_id, lnum, pnum);
			goto out_put;
		}
	}

	vol->eba_tbl->entries[lnum].pnum = pnum;

out_put:
	FUNC6(&ubi->fm_eba_sem);

	if (err && pnum >= 0)
		err = FUNC5(ubi, vol_id, lnum, pnum, 1);
	else if (!err && opnum >= 0)
		err = FUNC5(ubi, vol_id, lnum, opnum, 0);

	return err;
}