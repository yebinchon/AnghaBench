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
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int /*<<< orphan*/  copy_flag; int /*<<< orphan*/  sqnum; int /*<<< orphan*/  lnum; } ;
struct ubi_ec_hdr {int /*<<< orphan*/  ec; int /*<<< orphan*/  image_seq; } ;
struct ubi_device {int image_seq; int /*<<< orphan*/  ec_hdr_alsize; } ;
struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_peb {unsigned long long sqnum; int scrub; int /*<<< orphan*/  copy_flag; void* lnum; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UBI_BAD_FASTMAP ; 
 int UBI_IO_BITFLIPS ; 
 int UBI_IO_FF ; 
 int UBI_IO_FF_BITFLIPS ; 
 int /*<<< orphan*/  FUNC0 (struct ubi_attach_info*,struct list_head*,int,unsigned long long,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ubi_device*,struct ubi_attach_info*,struct ubi_vid_hdr*,struct ubi_ainf_peb*) ; 
 struct ubi_ainf_peb* FUNC7 (struct ubi_attach_info*,int,void*) ; 
 struct ubi_vid_io_buf* FUNC8 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_vid_io_buf*) ; 
 struct ubi_vid_hdr* FUNC11 (struct ubi_vid_io_buf*) ; 
 scalar_t__ FUNC12 (struct ubi_device*,int) ; 
 int FUNC13 (struct ubi_device*,int,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubi_device*,int,struct ubi_vid_io_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_attach_info*,int) ; 

__attribute__((used)) static int FUNC16(struct ubi_device *ubi, struct ubi_attach_info *ai,
		     __be32 *pebs, int pool_size, unsigned long long *max_sqnum,
		     struct list_head *free)
{
	struct ubi_vid_io_buf *vb;
	struct ubi_vid_hdr *vh;
	struct ubi_ec_hdr *ech;
	struct ubi_ainf_peb *new_aeb;
	int i, pnum, err, ret = 0;

	ech = FUNC5(ubi->ec_hdr_alsize, GFP_KERNEL);
	if (!ech)
		return -ENOMEM;

	vb = FUNC8(ubi, GFP_KERNEL);
	if (!vb) {
		FUNC4(ech);
		return -ENOMEM;
	}

	vh = FUNC11(vb);

	FUNC3("scanning fastmap pool: size = %i", pool_size);

	/*
	 * Now scan all PEBs in the pool to find changes which have been made
	 * after the creation of the fastmap
	 */
	for (i = 0; i < pool_size; i++) {
		int scrub = 0;
		int image_seq;

		pnum = FUNC1(pebs[i]);

		if (FUNC12(ubi, pnum)) {
			FUNC9(ubi, "bad PEB in fastmap pool!");
			ret = UBI_BAD_FASTMAP;
			goto out;
		}

		err = FUNC13(ubi, pnum, ech, 0);
		if (err && err != UBI_IO_BITFLIPS) {
			FUNC9(ubi, "unable to read EC header! PEB:%i err:%i",
				pnum, err);
			ret = err > 0 ? UBI_BAD_FASTMAP : err;
			goto out;
		} else if (err == UBI_IO_BITFLIPS)
			scrub = 1;

		/*
		 * Older UBI implementations have image_seq set to zero, so
		 * we shouldn't fail if image_seq == 0.
		 */
		image_seq = FUNC1(ech->image_seq);

		if (image_seq && (image_seq != ubi->image_seq)) {
			FUNC9(ubi, "bad image seq: 0x%x, expected: 0x%x",
				FUNC1(ech->image_seq), ubi->image_seq);
			ret = UBI_BAD_FASTMAP;
			goto out;
		}

		err = FUNC14(ubi, pnum, vb, 0);
		if (err == UBI_IO_FF || err == UBI_IO_FF_BITFLIPS) {
			unsigned long long ec = FUNC2(ech->ec);
			FUNC15(ai, pnum);
			FUNC3("Adding PEB to free: %i", pnum);

			if (err == UBI_IO_FF_BITFLIPS)
				scrub = 1;

			FUNC0(ai, free, pnum, ec, scrub);
			continue;
		} else if (err == 0 || err == UBI_IO_BITFLIPS) {
			FUNC3("Found non empty PEB:%i in pool", pnum);

			if (err == UBI_IO_BITFLIPS)
				scrub = 1;

			new_aeb = FUNC7(ai, pnum, FUNC2(ech->ec));
			if (!new_aeb) {
				ret = -ENOMEM;
				goto out;
			}

			new_aeb->lnum = FUNC1(vh->lnum);
			new_aeb->sqnum = FUNC2(vh->sqnum);
			new_aeb->copy_flag = vh->copy_flag;
			new_aeb->scrub = scrub;

			if (*max_sqnum < new_aeb->sqnum)
				*max_sqnum = new_aeb->sqnum;

			err = FUNC6(ubi, ai, vh, new_aeb);
			if (err) {
				ret = err > 0 ? UBI_BAD_FASTMAP : err;
				goto out;
			}
		} else {
			/* We are paranoid and fall back to scanning mode */
			FUNC9(ubi, "fastmap pool PEBs contains damaged PEBs!");
			ret = err > 0 ? UBI_BAD_FASTMAP : err;
			goto out;
		}

	}

out:
	FUNC10(vb);
	FUNC4(ech);
	return ret;
}