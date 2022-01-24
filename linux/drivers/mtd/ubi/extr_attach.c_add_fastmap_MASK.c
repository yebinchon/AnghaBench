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
struct ubi_vid_hdr {int /*<<< orphan*/  sqnum; int /*<<< orphan*/  vol_id; } ;
struct ubi_attach_info {int /*<<< orphan*/  fastmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_ainf_peb {int /*<<< orphan*/  sqnum; int /*<<< orphan*/  vol_id; TYPE_1__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ubi_ainf_peb* FUNC4 (struct ubi_attach_info*,int,int) ; 

__attribute__((used)) static int FUNC5(struct ubi_attach_info *ai, int pnum,
		       struct ubi_vid_hdr *vid_hdr, int ec)
{
	struct ubi_ainf_peb *aeb;

	aeb = FUNC4(ai, pnum, ec);
	if (!aeb)
		return -ENOMEM;

	aeb->vol_id = FUNC0(vid_hdr->vol_id);
	aeb->sqnum = FUNC1(vid_hdr->sqnum);
	FUNC3(&aeb->u.list, &ai->fastmap);

	FUNC2("add to fastmap list: PEB %d, vol_id %d, sqnum: %llu", pnum,
		aeb->vol_id, aeb->sqnum);

	return 0;
}