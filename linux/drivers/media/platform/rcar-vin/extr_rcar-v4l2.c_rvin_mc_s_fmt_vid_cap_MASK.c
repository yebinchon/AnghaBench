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
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ left; scalar_t__ top; } ;
struct rvin_dev {TYPE_2__ crop; TYPE_2__ compose; TYPE_3__ format; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rvin_dev* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				 struct v4l2_format *f)
{
	struct rvin_dev *vin = FUNC2(file);

	if (FUNC1(&vin->queue))
		return -EBUSY;

	FUNC0(vin, &f->fmt.pix);

	vin->format = f->fmt.pix;

	vin->crop.top = 0;
	vin->crop.left = 0;
	vin->crop.width = vin->format.width;
	vin->crop.height = vin->format.height;
	vin->compose = vin->crop;

	return 0;
}