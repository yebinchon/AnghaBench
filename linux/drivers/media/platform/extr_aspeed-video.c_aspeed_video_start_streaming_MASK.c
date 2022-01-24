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
struct vb2_queue {int dummy; } ;
struct aspeed_video {int /*<<< orphan*/  flags; scalar_t__ sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  VIDEO_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aspeed_video* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *q,
					unsigned int count)
{
	int rc;
	struct aspeed_video *video = FUNC3(q);

	video->sequence = 0;

	rc = FUNC1(video);
	if (rc) {
		FUNC0(video, VB2_BUF_STATE_QUEUED);
		return rc;
	}

	FUNC2(VIDEO_STREAMING, &video->flags);
	return 0;
}