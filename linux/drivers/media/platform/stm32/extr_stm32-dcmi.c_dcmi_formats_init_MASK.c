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
struct TYPE_2__ {struct v4l2_subdev* source; } ;
struct stm32_dcmi {unsigned int num_of_sd_formats; int /*<<< orphan*/ * sd_formats; int /*<<< orphan*/  sd_format; int /*<<< orphan*/  dev; TYPE_1__ entity; } ;
struct dcmi_format {scalar_t__ mbus_code; scalar_t__ fourcc; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct dcmi_format*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct dcmi_format* dcmi_formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enum_mbus_code ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dcmi_format const**,unsigned int) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_mbus_code_enum*) ; 

__attribute__((used)) static int FUNC6(struct stm32_dcmi *dcmi)
{
	const struct dcmi_format *sd_fmts[FUNC0(dcmi_formats)];
	unsigned int num_fmts = 0, i, j;
	struct v4l2_subdev *subdev = dcmi->entity.source;
	struct v4l2_subdev_mbus_code_enum mbus_code = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};

	while (!FUNC5(subdev, pad, enum_mbus_code,
				 NULL, &mbus_code)) {
		for (i = 0; i < FUNC0(dcmi_formats); i++) {
			if (dcmi_formats[i].mbus_code != mbus_code.code)
				continue;

			/* Code supported, have we got this fourcc yet? */
			for (j = 0; j < num_fmts; j++)
				if (sd_fmts[j]->fourcc ==
						dcmi_formats[i].fourcc) {
					/* Already available */
					FUNC1(dcmi->dev, "Skipping fourcc/code: %4.4s/0x%x\n",
						(char *)&sd_fmts[j]->fourcc,
						mbus_code.code);
					break;
				}
			if (j == num_fmts) {
				/* New */
				sd_fmts[num_fmts++] = dcmi_formats + i;
				FUNC1(dcmi->dev, "Supported fourcc/code: %4.4s/0x%x\n",
					(char *)&sd_fmts[num_fmts - 1]->fourcc,
					sd_fmts[num_fmts - 1]->mbus_code);
			}
		}
		mbus_code.index++;
	}

	if (!num_fmts)
		return -ENXIO;

	dcmi->num_of_sd_formats = num_fmts;
	dcmi->sd_formats = FUNC3(dcmi->dev,
					num_fmts, sizeof(struct dcmi_format *),
					GFP_KERNEL);
	if (!dcmi->sd_formats) {
		FUNC2(dcmi->dev, "Could not allocate memory\n");
		return -ENOMEM;
	}

	FUNC4(dcmi->sd_formats, sd_fmts,
	       num_fmts * sizeof(struct dcmi_format *));
	dcmi->sd_format = dcmi->sd_formats[0];

	return 0;
}