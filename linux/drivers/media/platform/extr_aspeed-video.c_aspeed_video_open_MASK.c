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
struct file {int dummy; } ;
struct aspeed_video {int /*<<< orphan*/  video_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 struct aspeed_video* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	int rc;
	struct aspeed_video *video = FUNC5(file);

	FUNC1(&video->video_lock);

	rc = FUNC4(file);
	if (rc) {
		FUNC2(&video->video_lock);
		return rc;
	}

	if (FUNC3(file))
		FUNC0(video);

	FUNC2(&video->video_lock);

	return 0;
}