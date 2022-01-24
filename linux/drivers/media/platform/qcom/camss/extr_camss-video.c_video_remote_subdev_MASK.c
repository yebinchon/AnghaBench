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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int /*<<< orphan*/  entity; int /*<<< orphan*/  index; } ;
struct camss_video {int /*<<< orphan*/  pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct media_pad* FUNC1 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct v4l2_subdev *FUNC3(struct camss_video *video,
					       u32 *pad)
{
	struct media_pad *remote;

	remote = FUNC1(&video->pad);

	if (!remote || !FUNC0(remote->entity))
		return NULL;

	if (pad)
		*pad = remote->index;

	return FUNC2(remote->entity);
}