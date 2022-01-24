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
struct v4l2_subdev_mbus_code_enum {scalar_t__ code; int /*<<< orphan*/  index; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct isi_format {scalar_t__ mbus_code; scalar_t__ fourcc; } ;
struct TYPE_2__ {struct v4l2_subdev* subdev; } ;
struct atmel_isi {unsigned int num_user_formats; int /*<<< orphan*/ * user_formats; int /*<<< orphan*/  current_fmt; int /*<<< orphan*/  dev; TYPE_1__ entity; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct isi_format*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enum_mbus_code ; 
 struct isi_format* isi_formats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct isi_format const**,unsigned int) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_mbus_code_enum*) ; 

__attribute__((used)) static int FUNC4(struct atmel_isi *isi)
{
	const struct isi_format *isi_fmts[FUNC0(isi_formats)];
	unsigned int num_fmts = 0, i, j;
	struct v4l2_subdev *subdev = isi->entity.subdev;
	struct v4l2_subdev_mbus_code_enum mbus_code = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};

	while (!FUNC3(subdev, pad, enum_mbus_code,
				 NULL, &mbus_code)) {
		for (i = 0; i < FUNC0(isi_formats); i++) {
			if (isi_formats[i].mbus_code != mbus_code.code)
				continue;

			/* Code supported, have we got this fourcc yet? */
			for (j = 0; j < num_fmts; j++)
				if (isi_fmts[j]->fourcc == isi_formats[i].fourcc)
					/* Already available */
					break;
			if (j == num_fmts)
				/* new */
				isi_fmts[num_fmts++] = isi_formats + i;
		}
		mbus_code.index++;
	}

	if (!num_fmts)
		return -ENXIO;

	isi->num_user_formats = num_fmts;
	isi->user_formats = FUNC1(isi->dev,
					 num_fmts, sizeof(struct isi_format *),
					 GFP_KERNEL);
	if (!isi->user_formats)
		return -ENOMEM;

	FUNC2(isi->user_formats, isi_fmts,
	       num_fmts * sizeof(struct isi_format *));
	isi->current_fmt = isi->user_formats[0];

	return 0;
}