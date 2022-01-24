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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct video_device {int dummy; } ;
struct file {int dummy; } ;
struct channel_obj {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENODEV ; 
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  querystd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct video_device* FUNC1 (struct file*) ; 
 struct channel_obj* FUNC2 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct video_device *vdev = FUNC1(file);
	struct channel_obj *ch = FUNC2(vdev);
	int ret;

	FUNC3(2, debug, "vpif_querystd\n");

	/* Call querystd function of decoder device */
	ret = FUNC0(ch->sd, video, querystd, std_id);

	if (ret == -ENOIOCTLCMD || ret == -ENODEV)
		return -ENODATA;
	if (ret) {
		FUNC3(1, debug, "Failed to query standard for sub devices\n");
		return ret;
	}

	return 0;
}