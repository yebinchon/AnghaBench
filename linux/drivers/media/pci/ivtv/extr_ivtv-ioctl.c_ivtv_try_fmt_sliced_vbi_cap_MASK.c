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
struct v4l2_sliced_vbi_format {int io_size; scalar_t__ service_set; scalar_t__* reserved; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct TYPE_2__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ivtv_open_id {scalar_t__ type; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  is_50hz; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_sliced_vbi_format*,int /*<<< orphan*/ ) ; 
 struct ivtv_open_id* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_sliced_vbi_format*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,void*,struct v4l2_format*) ; 
 scalar_t__ FUNC4 (struct v4l2_sliced_vbi_format*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh, struct v4l2_format *fmt)
{
	struct v4l2_sliced_vbi_format *vbifmt = &fmt->fmt.sliced;
	struct ivtv_open_id *id = FUNC1(fh);
	struct ivtv *itv = id->itv;

	if (id->type == IVTV_DEC_STREAM_TYPE_VBI)
		return FUNC3(file, fh, fmt);

	/* set sliced VBI capture format */
	vbifmt->io_size = sizeof(struct v4l2_sliced_vbi_data) * 36;
	vbifmt->reserved[0] = 0;
	vbifmt->reserved[1] = 0;

	if (vbifmt->service_set)
		FUNC2(vbifmt, itv->is_50hz);
	FUNC0(vbifmt, itv->is_50hz);
	vbifmt->service_set = FUNC4(vbifmt);
	return 0;
}