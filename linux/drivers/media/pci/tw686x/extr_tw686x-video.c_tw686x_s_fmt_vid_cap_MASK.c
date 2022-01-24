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
struct TYPE_3__ {unsigned long width; unsigned long height; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tw686x_video_channel {unsigned long width; unsigned long height; int /*<<< orphan*/  vidq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct tw686x_video_channel*,int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 int FUNC1 (struct file*,void*,struct v4l2_format*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct tw686x_video_channel* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct tw686x_video_channel *vc = FUNC3(file);
	unsigned long area;
	bool realloc;
	int err;

	if (FUNC2(&vc->vidq))
		return -EBUSY;

	area = vc->width * vc->height;
	err = FUNC1(file, priv, f);
	if (err)
		return err;

	realloc = area != (f->fmt.pix.width * f->fmt.pix.height);
	return FUNC0(vc, f->fmt.pix.pixelformat,
				 f->fmt.pix.width, f->fmt.pix.height,
				 realloc);
}