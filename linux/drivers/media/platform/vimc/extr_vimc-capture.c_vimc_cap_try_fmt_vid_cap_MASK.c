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
struct vimc_pix_map {int bpp; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; scalar_t__ field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ field; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 scalar_t__ V4L2_FIELD_ANY ; 
 int /*<<< orphan*/  VIMC_FRAME_MAX_HEIGHT ; 
 int /*<<< orphan*/  VIMC_FRAME_MAX_WIDTH ; 
 int /*<<< orphan*/  VIMC_FRAME_MIN_HEIGHT ; 
 int /*<<< orphan*/  VIMC_FRAME_MIN_WIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ fmt_default ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_pix_format*) ; 
 struct vimc_pix_map* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				    struct v4l2_format *f)
{
	struct v4l2_pix_format *format = &f->fmt.pix;
	const struct vimc_pix_map *vpix;

	format->width = FUNC0(u32, format->width, VIMC_FRAME_MIN_WIDTH,
				VIMC_FRAME_MAX_WIDTH) & ~1;
	format->height = FUNC0(u32, format->height, VIMC_FRAME_MIN_HEIGHT,
				 VIMC_FRAME_MAX_HEIGHT) & ~1;

	/* Don't accept a pixelformat that is not on the table */
	vpix = FUNC2(format->pixelformat);
	if (!vpix) {
		format->pixelformat = fmt_default.pixelformat;
		vpix = FUNC2(format->pixelformat);
	}
	/* TODO: Add support for custom bytesperline values */
	format->bytesperline = format->width * vpix->bpp;
	format->sizeimage = format->bytesperline * format->height;

	if (format->field == V4L2_FIELD_ANY)
		format->field = fmt_default.field;

	FUNC1(format);

	return 0;
}