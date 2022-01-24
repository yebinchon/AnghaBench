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
struct ubi_vid_hdr {scalar_t__ vol_type; int /*<<< orphan*/  compat; int /*<<< orphan*/  data_pad; int /*<<< orphan*/  used_ebs; int /*<<< orphan*/  vol_id; } ;
struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int used_ebs; int data_pad; int /*<<< orphan*/  vol_type; int /*<<< orphan*/  compat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_ainf_volume*) ; 
 int /*<<< orphan*/  UBI_DYNAMIC_VOLUME ; 
 int /*<<< orphan*/  UBI_STATIC_VOLUME ; 
 scalar_t__ UBI_VID_DYNAMIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ubi_ainf_volume* FUNC3 (struct ubi_attach_info*,int,int*) ; 

__attribute__((used)) static struct ubi_ainf_volume *FUNC4(struct ubi_attach_info *ai,
					  int vol_id, int pnum,
					  const struct ubi_vid_hdr *vid_hdr)
{
	struct ubi_ainf_volume *av;
	bool created;

	FUNC2(vol_id == FUNC1(vid_hdr->vol_id));

	av = FUNC3(ai, vol_id, &created);
	if (FUNC0(av) || !created)
		return av;

	av->used_ebs = FUNC1(vid_hdr->used_ebs);
	av->data_pad = FUNC1(vid_hdr->data_pad);
	av->compat = vid_hdr->compat;
	av->vol_type = vid_hdr->vol_type == UBI_VID_DYNAMIC ? UBI_DYNAMIC_VOLUME
							    : UBI_STATIC_VOLUME;

	return av;
}