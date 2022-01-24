#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_meta_format {int /*<<< orphan*/  dataformat; } ;
struct TYPE_3__ {struct v4l2_meta_format meta; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  format; } ;
struct uvc_streaming {int /*<<< orphan*/  mutex; TYPE_2__ meta; int /*<<< orphan*/  queue; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct uvc_streaming* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
				    struct v4l2_format *format)
{
	struct v4l2_fh *vfh = file->private_data;
	struct uvc_streaming *stream = FUNC4(vfh->vdev);
	struct v4l2_meta_format *fmt = &format->fmt.meta;
	int ret;

	ret = FUNC2(file, fh, format);
	if (ret < 0)
		return ret;

	/*
	 * We could in principle switch at any time, also during streaming.
	 * Metadata buffers would still be perfectly parseable, but it's more
	 * consistent and cleaner to disallow that.
	 */
	FUNC0(&stream->mutex);

	if (FUNC3(&stream->queue))
		ret = -EBUSY;
	else
		stream->meta.format = fmt->dataformat;

	FUNC1(&stream->mutex);

	return ret;
}