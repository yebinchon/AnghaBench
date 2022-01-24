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
struct vivid_dev {int /*<<< orphan*/  has_raw_vbi_cap; } ;
struct v4l2_vbi_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_vbi_format vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vivid_dev* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct vivid_dev*,struct v4l2_vbi_format*) ; 
 int /*<<< orphan*/  FUNC2 (struct vivid_dev*) ; 

int FUNC3(struct file *file, void *priv,
					struct v4l2_format *f)
{
	struct vivid_dev *dev = FUNC0(file);
	struct v4l2_vbi_format *vbi = &f->fmt.vbi;

	if (!FUNC2(dev) || !dev->has_raw_vbi_cap)
		return -EINVAL;

	FUNC1(dev, vbi);
	return 0;
}