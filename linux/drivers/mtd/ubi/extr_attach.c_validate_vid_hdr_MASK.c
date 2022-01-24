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
struct ubi_vid_hdr {int vol_type; int /*<<< orphan*/  data_pad; int /*<<< orphan*/  used_ebs; int /*<<< orphan*/  vol_id; } ;
struct ubi_device {int dummy; } ;
struct ubi_ainf_volume {scalar_t__ leb_count; int vol_id; scalar_t__ vol_type; int used_ebs; int data_pad; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int UBI_VID_DYNAMIC ; 
 int UBI_VID_STATIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_ainf_volume const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_vid_hdr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device const*,char*,...) ; 

__attribute__((used)) static int FUNC4(const struct ubi_device *ubi,
			    const struct ubi_vid_hdr *vid_hdr,
			    const struct ubi_ainf_volume *av, int pnum)
{
	int vol_type = vid_hdr->vol_type;
	int vol_id = FUNC0(vid_hdr->vol_id);
	int used_ebs = FUNC0(vid_hdr->used_ebs);
	int data_pad = FUNC0(vid_hdr->data_pad);

	if (av->leb_count != 0) {
		int av_vol_type;

		/*
		 * This is not the first logical eraseblock belonging to this
		 * volume. Ensure that the data in its VID header is consistent
		 * to the data in previous logical eraseblock headers.
		 */

		if (vol_id != av->vol_id) {
			FUNC3(ubi, "inconsistent vol_id");
			goto bad;
		}

		if (av->vol_type == UBI_STATIC_VOLUME)
			av_vol_type = UBI_VID_STATIC;
		else
			av_vol_type = UBI_VID_DYNAMIC;

		if (vol_type != av_vol_type) {
			FUNC3(ubi, "inconsistent vol_type");
			goto bad;
		}

		if (used_ebs != av->used_ebs) {
			FUNC3(ubi, "inconsistent used_ebs");
			goto bad;
		}

		if (data_pad != av->data_pad) {
			FUNC3(ubi, "inconsistent data_pad");
			goto bad;
		}
	}

	return 0;

bad:
	FUNC3(ubi, "inconsistent VID header at PEB %d", pnum);
	FUNC2(vid_hdr);
	FUNC1(av);
	return -EINVAL;
}