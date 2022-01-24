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
struct ubi_vid_hdr {int /*<<< orphan*/  compat; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  vol_type; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UBI_COMPAT_DELETE ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ubi_vid_io_buf* FUNC1 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 struct ubi_vid_hdr* FUNC2 (struct ubi_vid_io_buf*) ; 

__attribute__((used)) static struct ubi_vid_io_buf *FUNC3(struct ubi_device *ubi, int vol_id)
{
	struct ubi_vid_io_buf *new;
	struct ubi_vid_hdr *vh;

	new = FUNC1(ubi, GFP_KERNEL);
	if (!new)
		goto out;

	vh = FUNC2(new);
	vh->vol_type = UBI_VID_DYNAMIC;
	vh->vol_id = FUNC0(vol_id);

	/* UBI implementations without fastmap support have to delete the
	 * fastmap.
	 */
	vh->compat = UBI_COMPAT_DELETE;

out:
	return new;
}