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
struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx18_open_id {scalar_t__ type; struct cx18* cx; } ;
struct cx18 {scalar_t__ is_50hz; } ;

/* Variables and functions */
 scalar_t__ CX18_ENC_STREAM_TYPE_YUV ; 
 struct cx18_open_id* FUNC0 (void*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				struct v4l2_format *fmt)
{
	struct cx18_open_id *id = FUNC0(fh);
	struct cx18 *cx = id->cx;
	int w = fmt->fmt.pix.width;
	int h = fmt->fmt.pix.height;
	int min_h = 2;

	w = FUNC2(w, 720);
	w = FUNC1(w, 2);
	if (id->type == CX18_ENC_STREAM_TYPE_YUV) {
		/* YUV height must be a multiple of 32 */
		h &= ~0x1f;
		min_h = 32;
	}
	h = FUNC2(h, cx->is_50hz ? 576 : 480);
	h = FUNC1(h, min_h);

	fmt->fmt.pix.width = w;
	fmt->fmt.pix.height = h;
	return 0;
}