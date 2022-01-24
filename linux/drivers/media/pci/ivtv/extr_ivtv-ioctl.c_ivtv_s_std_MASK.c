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
typedef  scalar_t__ v4l2_std_id ;
struct ivtv {scalar_t__ std; int v4l2_cap; int /*<<< orphan*/  decoding; int /*<<< orphan*/  capturing; int /*<<< orphan*/  i_flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_STD_ALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, v4l2_std_id std)
{
	struct ivtv *itv = FUNC2(fh)->itv;

	if ((std & V4L2_STD_ALL) == 0)
		return -EINVAL;

	if (std == itv->std)
		return 0;

	if (FUNC5(IVTV_F_I_RADIO_USER, &itv->i_flags) ||
	    FUNC1(&itv->capturing) > 0 ||
	    FUNC1(&itv->decoding) > 0) {
		/* Switching standard would mess with already running
		   streams, prevent that by returning EBUSY. */
		return -EBUSY;
	}

	FUNC0("Switching standard to %llx.\n",
		(unsigned long long)itv->std);

	FUNC4(itv, std);
	if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT)
		FUNC3(itv, std);

	return 0;
}