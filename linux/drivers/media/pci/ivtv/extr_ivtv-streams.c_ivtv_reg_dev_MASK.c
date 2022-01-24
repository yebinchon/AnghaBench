#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num; int /*<<< orphan*/  device_caps; int /*<<< orphan*/ * v4l2_dev; } ;
struct ivtv_stream {int /*<<< orphan*/  name; TYPE_2__ vdev; int /*<<< orphan*/  caps; } ;
struct TYPE_6__ {int /*<<< orphan*/ * kilobytes; } ;
struct ivtv {TYPE_1__ options; int /*<<< orphan*/  v4l2_cap; struct ivtv_stream* streams; scalar_t__ osd_video_pbase; } ;
struct TYPE_8__ {int vfl_type; int num_offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IVTV_DEC_STREAM_TYPE_MPG ; 
 size_t IVTV_DEC_STREAM_TYPE_YUV ; 
 int IVTV_ENC_STREAM_TYPE_MPG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  V4L2_CAP_VIDEO_OUTPUT_OVERLAY ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 TYPE_5__* ivtv_stream_info ; 
 char* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct ivtv_stream*) ; 

__attribute__((used)) static int FUNC5(struct ivtv *itv, int type)
{
	struct ivtv_stream *s = &itv->streams[type];
	int vfl_type = ivtv_stream_info[type].vfl_type;
	const char *name;
	int num;

	if (s->vdev.v4l2_dev == NULL)
		return 0;

	num = s->vdev.num;
	/* card number + user defined offset + device offset */
	if (type != IVTV_ENC_STREAM_TYPE_MPG) {
		struct ivtv_stream *s_mpg = &itv->streams[IVTV_ENC_STREAM_TYPE_MPG];

		if (s_mpg->vdev.v4l2_dev)
			num = s_mpg->vdev.num + ivtv_stream_info[type].num_offset;
	}
	s->vdev.device_caps = s->caps;
	if (itv->osd_video_pbase) {
		itv->streams[IVTV_DEC_STREAM_TYPE_YUV].vdev.device_caps |=
			V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
		itv->streams[IVTV_DEC_STREAM_TYPE_MPG].vdev.device_caps |=
			V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
		itv->v4l2_cap |= V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
	}
	FUNC4(&s->vdev, s);

	/* Register device. First try the desired minor, then any free one. */
	if (FUNC3(&s->vdev, vfl_type, num)) {
		FUNC0("Couldn't register v4l2 device for %s (device node number %d)\n",
				s->name, num);
		return -ENOMEM;
	}
	name = FUNC2(&s->vdev);

	switch (vfl_type) {
	case VFL_TYPE_GRABBER:
		FUNC1("Registered device %s for %s (%d kB)\n",
			name, s->name, itv->options.kilobytes[type]);
		break;
	case VFL_TYPE_RADIO:
		FUNC1("Registered device %s for %s\n",
			name, s->name);
		break;
	case VFL_TYPE_VBI:
		if (itv->options.kilobytes[type])
			FUNC1("Registered device %s for %s (%d kB)\n",
				name, s->name, itv->options.kilobytes[type]);
		else
			FUNC1("Registered device %s for %s\n",
				name, s->name);
		break;
	}
	return 0;
}