#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int /*<<< orphan*/  sqnum; void* lnum; void* data_pad; void* used_ebs; void* data_size; int /*<<< orphan*/  compat; void* vol_id; int /*<<< orphan*/  vol_type; } ;
struct ubi_device {int /*<<< orphan*/  vtbl_size; } ;
struct ubi_attach_info {int /*<<< orphan*/  erase; int /*<<< orphan*/  max_sqnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_ainf_peb {TYPE_1__ u; int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ubi_ainf_peb*) ; 
 int FUNC1 (struct ubi_ainf_peb*) ; 
 int /*<<< orphan*/  UBI_LAYOUT_VOLUME_COMPAT ; 
 int UBI_LAYOUT_VOLUME_ID ; 
 int /*<<< orphan*/  UBI_LAYOUT_VOLUME_TYPE ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ubi_device*,struct ubi_attach_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 struct ubi_vid_io_buf* FUNC7 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 struct ubi_ainf_peb* FUNC8 (struct ubi_device*,struct ubi_attach_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_attach_info*,struct ubi_ainf_peb*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_vid_io_buf*) ; 
 struct ubi_vid_hdr* FUNC11 (struct ubi_vid_io_buf*) ; 
 int FUNC12 (struct ubi_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubi_device*,int /*<<< orphan*/ ,struct ubi_vid_io_buf*) ; 

__attribute__((used)) static int FUNC14(struct ubi_device *ubi, struct ubi_attach_info *ai,
		       int copy, void *vtbl)
{
	int err, tries = 0;
	struct ubi_vid_io_buf *vidb;
	struct ubi_vid_hdr *vid_hdr;
	struct ubi_ainf_peb *new_aeb;

	FUNC4("create volume table (copy #%d)", copy + 1);

	vidb = FUNC7(ubi, GFP_KERNEL);
	if (!vidb)
		return -ENOMEM;

	vid_hdr = FUNC11(vidb);

retry:
	new_aeb = FUNC8(ubi, ai);
	if (FUNC0(new_aeb)) {
		err = FUNC1(new_aeb);
		goto out_free;
	}

	vid_hdr->vol_type = UBI_LAYOUT_VOLUME_TYPE;
	vid_hdr->vol_id = FUNC2(UBI_LAYOUT_VOLUME_ID);
	vid_hdr->compat = UBI_LAYOUT_VOLUME_COMPAT;
	vid_hdr->data_size = vid_hdr->used_ebs =
			     vid_hdr->data_pad = FUNC2(0);
	vid_hdr->lnum = FUNC2(copy);
	vid_hdr->sqnum = FUNC3(++ai->max_sqnum);

	/* The EC header is already there, write the VID header */
	err = FUNC13(ubi, new_aeb->pnum, vidb);
	if (err)
		goto write_error;

	/* Write the layout volume contents */
	err = FUNC12(ubi, vtbl, new_aeb->pnum, 0, ubi->vtbl_size);
	if (err)
		goto write_error;

	/*
	 * And add it to the attaching information. Don't delete the old version
	 * of this LEB as it will be deleted and freed in 'ubi_add_to_av()'.
	 */
	err = FUNC6(ubi, ai, new_aeb->pnum, new_aeb->ec, vid_hdr, 0);
	FUNC9(ai, new_aeb);
	FUNC10(vidb);
	return err;

write_error:
	if (err == -EIO && ++tries <= 5) {
		/*
		 * Probably this physical eraseblock went bad, try to pick
		 * another one.
		 */
		FUNC5(&new_aeb->u.list, &ai->erase);
		goto retry;
	}
	FUNC9(ai, new_aeb);
out_free:
	FUNC10(vidb);
	return err;

}