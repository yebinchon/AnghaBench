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
struct v4l2_frequency {scalar_t__ tuner; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  tuner ; 
 struct saa7134_dev* FUNC2 (struct file*) ; 

int FUNC3(struct file *file, void *priv,
					const struct v4l2_frequency *f)
{
	struct saa7134_dev *dev = FUNC2(file);

	if (0 != f->tuner)
		return -EINVAL;

	FUNC1(dev, tuner, s_frequency, f);

	FUNC0(dev);
	return 0;
}