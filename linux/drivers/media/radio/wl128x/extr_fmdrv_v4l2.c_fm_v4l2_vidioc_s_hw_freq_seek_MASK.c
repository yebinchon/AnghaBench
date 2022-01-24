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
struct v4l2_hw_freq_seek {int /*<<< orphan*/  spacing; int /*<<< orphan*/  wrap_around; int /*<<< orphan*/  seek_upward; } ;
struct fmdev {scalar_t__ curr_fmmode; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 scalar_t__ FM_MODE_RX ; 
 int O_NONBLOCK ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct fmdev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		const struct v4l2_hw_freq_seek *seek)
{
	struct fmdev *fmdev = FUNC3(file);
	int ret;

	if (file->f_flags & O_NONBLOCK)
		return -EWOULDBLOCK;

	if (fmdev->curr_fmmode != FM_MODE_RX) {
		ret = FUNC1(fmdev, FM_MODE_RX);
		if (ret != 0) {
			FUNC2("Failed to set RX mode\n");
			return ret;
		}
	}

	ret = FUNC0(fmdev, seek->seek_upward, seek->wrap_around,
			seek->spacing);
	if (ret < 0)
		FUNC2("RX seek failed - %d\n", ret);

	return ret;
}