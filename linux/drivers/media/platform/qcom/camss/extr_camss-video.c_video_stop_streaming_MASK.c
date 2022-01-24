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
struct media_entity {struct media_pad* pads; } ;
struct video_device {struct media_entity entity; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct camss_video {TYPE_1__* ops; struct video_device vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_buffers ) (struct camss_video*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct media_entity*) ; 
 struct media_pad* FUNC1 (struct media_pad*) ; 
 struct v4l2_subdev* FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_entity*) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC4 (struct camss_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct camss_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct camss_video* FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC7(struct vb2_queue *q)
{
	struct camss_video *video = FUNC6(q);
	struct video_device *vdev = &video->vdev;
	struct media_entity *entity;
	struct media_pad *pad;
	struct v4l2_subdev *subdev;

	entity = &vdev->entity;
	while (1) {
		pad = &entity->pads[0];
		if (!(pad->flags & MEDIA_PAD_FL_SINK))
			break;

		pad = FUNC1(pad);
		if (!pad || !FUNC0(pad->entity))
			break;

		entity = pad->entity;
		subdev = FUNC2(entity);

		FUNC5(subdev, video, s_stream, 0);
	}

	FUNC3(&vdev->entity);

	video->ops->flush_buffers(video, VB2_BUF_STATE_ERROR);
}