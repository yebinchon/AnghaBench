#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file {int dummy; } ;
struct ceu_subdev {int /*<<< orphan*/  v4l2_sd; } ;
struct ceu_device {unsigned int num_sd; unsigned int sd_index; struct ceu_subdev* sd; struct ceu_subdev* subdevs; int /*<<< orphan*/  vb2_vq; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct ceu_device*) ; 
 int FUNC1 (struct ceu_device*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct ceu_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, unsigned int i)
{
	struct ceu_device *ceudev = FUNC4(file);
	struct ceu_subdev *ceu_sd_old;
	int ret;

	if (i >= ceudev->num_sd)
		return -EINVAL;

	if (FUNC3(&ceudev->vb2_vq))
		return -EBUSY;

	if (i == ceudev->sd_index)
		return 0;

	ceu_sd_old = ceudev->sd;
	ceudev->sd = &ceudev->subdevs[i];

	/*
	 * Make sure we can generate output image formats and apply
	 * default one.
	 */
	ret = FUNC0(ceudev);
	if (ret) {
		ceudev->sd = ceu_sd_old;
		return -EINVAL;
	}

	ret = FUNC1(ceudev);
	if (ret) {
		ceudev->sd = ceu_sd_old;
		return -EINVAL;
	}

	/* Now that we're sure we can use the sensor, power off the old one. */
	FUNC2(ceu_sd_old->v4l2_sd, core, s_power, 0);
	FUNC2(ceudev->sd->v4l2_sd, core, s_power, 1);

	ceudev->sd_index = i;

	return 0;
}