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
struct ubi_wl_entry {int /*<<< orphan*/  pnum; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int /*<<< orphan*/  sqnum; } ;
struct ubi_fastmap_layout {int used_blocks; struct ubi_wl_entry** e; } ;
struct ubi_device {struct ubi_fastmap_layout* fm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UBI_FM_SB_VOLUME_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_fastmap_layout*) ; 
 struct ubi_fastmap_layout* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ubi_vid_io_buf* FUNC3 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_vid_io_buf*) ; 
 struct ubi_vid_hdr* FUNC5 (struct ubi_vid_io_buf*) ; 
 int FUNC6 (struct ubi_device*,int /*<<< orphan*/ ,struct ubi_vid_io_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*) ; 
 struct ubi_wl_entry* FUNC8 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ubi_device *ubi)
{
	int ret;
	struct ubi_fastmap_layout *fm;
	struct ubi_wl_entry *e;
	struct ubi_vid_io_buf *vb = NULL;
	struct ubi_vid_hdr *vh;

	if (!ubi->fm)
		return 0;

	ubi->fm = NULL;

	ret = -ENOMEM;
	fm = FUNC2(sizeof(*fm), GFP_KERNEL);
	if (!fm)
		goto out;

	vb = FUNC3(ubi, UBI_FM_SB_VOLUME_ID);
	if (!vb)
		goto out_free_fm;

	vh = FUNC5(vb);

	ret = -ENOSPC;
	e = FUNC8(ubi, 1);
	if (!e)
		goto out_free_fm;

	/*
	 * Create fake fastmap such that UBI will fall back
	 * to scanning mode.
	 */
	vh->sqnum = FUNC0(FUNC7(ubi));
	ret = FUNC6(ubi, e->pnum, vb);
	if (ret < 0) {
		FUNC9(ubi, e, 0, 0);
		goto out_free_fm;
	}

	fm->used_blocks = 1;
	fm->e[0] = e;

	ubi->fm = fm;

out:
	FUNC4(vb);
	return ret;

out_free_fm:
	FUNC1(fm);
	goto out;
}