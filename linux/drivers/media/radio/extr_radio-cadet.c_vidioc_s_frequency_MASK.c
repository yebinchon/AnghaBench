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
struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cadet {int is_fm_band; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* bands ; 
 int /*<<< orphan*/  FUNC0 (struct cadet*,int) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				const struct v4l2_frequency *f)
{
	struct cadet *dev = FUNC1(file);

	if (f->tuner)
		return -EINVAL;
	dev->is_fm_band =
		f->frequency >= (bands[0].rangehigh + bands[1].rangelow) / 2;
	FUNC0(dev, f->frequency);
	return 0;
}