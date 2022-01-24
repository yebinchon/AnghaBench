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
struct ubi_vid_hdr {int dummy; } ;
struct ubi_device {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  leb_size; int /*<<< orphan*/  peb_buf; int /*<<< orphan*/  leb_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int UBI_IO_BITFLIPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,...) ; 
 int FUNC9 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
			    int pnum)
{
	int err;

	FUNC2(&ubi->buf_mutex);
	FUNC0(ubi->peb_buf, 0x00, ubi->leb_size);

	err = FUNC9(ubi, ubi->peb_buf, pnum, ubi->leb_start,
			  ubi->leb_size);
	if (err == UBI_IO_BITFLIPS || FUNC1(err)) {
		/*
		 * Bit-flips or integrity errors while reading the data area.
		 * It is difficult to say for sure what type of corruption is
		 * this, but presumably a power cut happened while this PEB was
		 * erased, so it became unstable and corrupted, and should be
		 * erased.
		 */
		err = 0;
		goto out_unlock;
	}

	if (err)
		goto out_unlock;

	if (FUNC5(ubi->peb_buf, 0xFF, ubi->leb_size))
		goto out_unlock;

	FUNC8(ubi, "PEB %d contains corrupted VID header, and the data does not contain all 0xFF",
		pnum);
	FUNC8(ubi, "this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection");
	FUNC7(vid_hdr);
	FUNC4("hexdump of PEB %d offset %d, length %d",
	       pnum, ubi->leb_start, ubi->leb_size);
	FUNC6(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
			       ubi->peb_buf, ubi->leb_size, 1);
	err = 1;

out_unlock:
	FUNC3(&ubi->buf_mutex);
	return err;
}