#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  global_alpha; int /*<<< orphan*/  chromakey; } ;
struct TYPE_5__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv {int /*<<< orphan*/  osd_global_alpha; int /*<<< orphan*/  osd_chroma_key; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct ivtv* itv; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_format *fmt)
{
	struct ivtv *itv = FUNC0(fh)->itv;
	int ret = FUNC2(file, fh, fmt);

	if (ret == 0) {
		itv->osd_chroma_key = fmt->fmt.win.chromakey;
		itv->osd_global_alpha = fmt->fmt.win.global_alpha;
		FUNC1(itv);
	}
	return ret;
}