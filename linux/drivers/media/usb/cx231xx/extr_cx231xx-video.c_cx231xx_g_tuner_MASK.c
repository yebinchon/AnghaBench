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
struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int /*<<< orphan*/  capability; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_CAP_NORM ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tuner ; 

int FUNC3(struct file *file, void *priv, struct v4l2_tuner *t)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	int rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	if (0 != t->index)
		return -EINVAL;

	FUNC2(t->name, "Tuner", sizeof(t->name));

	t->type = V4L2_TUNER_ANALOG_TV;
	t->capability = V4L2_TUNER_CAP_NORM;
	t->rangehigh = 0xffffffffUL;
	t->signal = 0xffff;	/* LOCKED */
	FUNC0(dev, tuner, g_tuner, t);

	return 0;
}