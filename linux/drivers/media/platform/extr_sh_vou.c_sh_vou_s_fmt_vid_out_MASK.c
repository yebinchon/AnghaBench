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
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sh_vou_device {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sh_vou_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,void*,struct v4l2_format*) ; 
 struct sh_vou_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct sh_vou_device *vou_dev = FUNC2(file);
	int ret = FUNC1(file, priv, fmt);

	if (ret)
		return ret;
	return FUNC0(vou_dev, &fmt->fmt.pix);
}