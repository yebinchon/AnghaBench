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
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int /*<<< orphan*/  vb_vidq; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct em28xx* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct em28xx *dev = FUNC2(file);
	struct em28xx_v4l2 *v4l2 = dev->v4l2;

	if (FUNC1(&v4l2->vb_vidq))
		return -EBUSY;

	FUNC3(file, priv, f);

	return FUNC0(dev, f->fmt.pix.pixelformat,
				f->fmt.pix.width, f->fmt.pix.height);
}