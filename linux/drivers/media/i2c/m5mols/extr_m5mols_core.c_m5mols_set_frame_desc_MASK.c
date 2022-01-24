#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; } ;
struct v4l2_mbus_frame_desc {int num_entries; TYPE_2__* entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf_size; } ;
struct m5mols_info {int /*<<< orphan*/  lock; TYPE_1__ cap; struct v4l2_mbus_framefmt* ffmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M5MOLS_MAIN_JPEG_SIZE_MAX ; 
 size_t M5MOLS_RESTYPE_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MBUS_FRAME_DESC_FL_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct m5mols_info* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, unsigned int pad,
				 struct v4l2_mbus_frame_desc *fd)
{
	struct m5mols_info *info = FUNC3(sd);
	struct v4l2_mbus_framefmt *mf = &info->ffmt[M5MOLS_RESTYPE_CAPTURE];

	if (pad != 0 || fd == NULL)
		return -EINVAL;

	fd->entry[0].flags = V4L2_MBUS_FRAME_DESC_FL_LEN_MAX;
	fd->num_entries = 1;
	fd->entry[0].length = FUNC0(u32, fd->entry[0].length,
				      mf->width * mf->height,
				      M5MOLS_MAIN_JPEG_SIZE_MAX);
	FUNC1(&info->lock);
	info->cap.buf_size = fd->entry[0].length;
	FUNC2(&info->lock);

	return 0;
}