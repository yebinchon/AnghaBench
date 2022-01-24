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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct s5k6aa {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; int /*<<< orphan*/  colorspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  S5K6AA_WIN_HEIGHT_MAX ; 
 int /*<<< orphan*/  S5K6AA_WIN_HEIGHT_MIN ; 
 int /*<<< orphan*/  S5K6AA_WIN_WIDTH_MAX ; 
 int /*<<< orphan*/  S5K6AA_WIN_WIDTH_MIN ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_REC709 ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 TYPE_1__* s5k6aa_formats ; 
 unsigned int FUNC0 (struct s5k6aa*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s5k6aa *s5k6aa,
			      struct v4l2_mbus_framefmt *mf)
{
	unsigned int index;

	FUNC1(&mf->width, S5K6AA_WIN_WIDTH_MIN,
			      S5K6AA_WIN_WIDTH_MAX, 1,
			      &mf->height, S5K6AA_WIN_HEIGHT_MIN,
			      S5K6AA_WIN_HEIGHT_MAX, 1, 0);

	if (mf->colorspace != V4L2_COLORSPACE_JPEG &&
	    mf->colorspace != V4L2_COLORSPACE_REC709)
		mf->colorspace = V4L2_COLORSPACE_JPEG;

	index = FUNC0(s5k6aa, mf);

	mf->colorspace	= s5k6aa_formats[index].colorspace;
	mf->code	= s5k6aa_formats[index].code;
	mf->field	= V4L2_FIELD_NONE;
}