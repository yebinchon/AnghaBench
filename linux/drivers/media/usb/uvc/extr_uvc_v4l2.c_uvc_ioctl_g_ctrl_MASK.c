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
typedef  int /*<<< orphan*/  xctrl ;
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_ext_control*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct uvc_video_chain*) ; 
 int FUNC2 (struct uvc_video_chain*,struct v4l2_ext_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_fh*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
			    struct v4l2_control *ctrl)
{
	struct uvc_fh *handle = fh;
	struct uvc_video_chain *chain = handle->chain;
	struct v4l2_ext_control xctrl;
	int ret;

	FUNC0(&xctrl, 0, sizeof(xctrl));
	xctrl.id = ctrl->id;

	ret = FUNC1(chain);
	if (ret < 0)
		return ret;

	ret = FUNC2(chain, &xctrl);
	FUNC3(handle);
	if (ret < 0)
		return ret;

	ctrl->value = xctrl.value;
	return 0;
}