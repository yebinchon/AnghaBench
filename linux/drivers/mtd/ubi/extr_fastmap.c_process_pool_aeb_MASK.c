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
struct ubi_vid_hdr {int /*<<< orphan*/  vol_id; } ;
struct ubi_device {int dummy; } ;
struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int vol_id; } ;
struct ubi_ainf_peb {int dummy; } ;

/* Variables and functions */
 int UBI_BAD_FASTMAP ; 
 int UBI_FM_DATA_VOLUME_ID ; 
 int UBI_FM_SB_VOLUME_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,char*) ; 
 struct ubi_ainf_volume* FUNC3 (struct ubi_attach_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_attach_info*,struct ubi_ainf_peb*) ; 
 int FUNC5 (struct ubi_device*,struct ubi_attach_info*,struct ubi_ainf_volume*,struct ubi_vid_hdr*,struct ubi_ainf_peb*) ; 

__attribute__((used)) static int FUNC6(struct ubi_device *ubi, struct ubi_attach_info *ai,
			    struct ubi_vid_hdr *new_vh,
			    struct ubi_ainf_peb *new_aeb)
{
	int vol_id = FUNC0(new_vh->vol_id);
	struct ubi_ainf_volume *av;

	if (vol_id == UBI_FM_SB_VOLUME_ID || vol_id == UBI_FM_DATA_VOLUME_ID) {
		FUNC4(ai, new_aeb);

		return 0;
	}

	/* Find the volume this SEB belongs to */
	av = FUNC3(ai, vol_id);
	if (!av) {
		FUNC2(ubi, "orphaned volume in fastmap pool!");
		FUNC4(ai, new_aeb);
		return UBI_BAD_FASTMAP;
	}

	FUNC1(vol_id == av->vol_id);

	return FUNC5(ubi, ai, av, new_vh, new_aeb);
}