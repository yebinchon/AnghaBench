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
struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct radio_isa_ops {int (* s_stereo ) (struct radio_isa_card*,int) ;} ;
struct radio_isa_card {int stereo; TYPE_1__* drv; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct radio_isa_ops* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_MODE_STEREO ; 
 int FUNC0 (struct radio_isa_card*,int) ; 
 struct radio_isa_card* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				const struct v4l2_tuner *v)
{
	struct radio_isa_card *isa = FUNC1(file);
	const struct radio_isa_ops *ops = isa->drv->ops;

	if (v->index)
		return -EINVAL;
	if (ops->s_stereo) {
		isa->stereo = (v->audmode == V4L2_TUNER_MODE_STEREO);
		return ops->s_stereo(isa, isa->stereo);
	}
	return 0;
}