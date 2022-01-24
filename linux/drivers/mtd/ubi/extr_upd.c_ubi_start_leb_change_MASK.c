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
struct ubi_volume {int changing_leb; scalar_t__ upd_bytes; int /*<<< orphan*/  upd_buf; int /*<<< orphan*/  ch_lnum; scalar_t__ upd_received; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  updating; } ;
struct ubi_leb_change_req {scalar_t__ bytes; int /*<<< orphan*/  lnum; } ;
struct ubi_device {int /*<<< orphan*/  min_io_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ubi_device*,struct ubi_volume*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ubi_device *ubi, struct ubi_volume *vol,
			 const struct ubi_leb_change_req *req)
{
	FUNC2(!vol->updating && !vol->changing_leb);

	FUNC1("start changing LEB %d:%d, %u bytes",
		vol->vol_id, req->lnum, req->bytes);
	if (req->bytes == 0)
		return FUNC3(ubi, vol, req->lnum, NULL, 0);

	vol->upd_bytes = req->bytes;
	vol->upd_received = 0;
	vol->changing_leb = 1;
	vol->ch_lnum = req->lnum;

	vol->upd_buf = FUNC4(FUNC0((int)req->bytes, ubi->min_io_size));
	if (!vol->upd_buf)
		return -ENOMEM;

	return 0;
}