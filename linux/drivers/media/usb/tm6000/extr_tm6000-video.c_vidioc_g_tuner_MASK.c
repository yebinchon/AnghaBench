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
struct v4l2_tuner {scalar_t__ index; int capability; int rangehigh; int /*<<< orphan*/  audmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {scalar_t__ tuner_type; int /*<<< orphan*/  amode; int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int V4L2_TUNER_CAP_NORM ; 
 int V4L2_TUNER_CAP_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_tuner *t)
{
	struct tm6000_fh   *fh  = priv;
	struct tm6000_core *dev = fh->dev;

	if (UNSET == dev->tuner_type)
		return -ENOTTY;
	if (0 != t->index)
		return -EINVAL;

	FUNC0(t->name, "Television", sizeof(t->name));
	t->type       = V4L2_TUNER_ANALOG_TV;
	t->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO;
	t->rangehigh  = 0xffffffffUL;
	t->rxsubchans = V4L2_TUNER_SUB_STEREO;

	FUNC1(&dev->v4l2_dev, 0, tuner, g_tuner, t);

	t->audmode = dev->amode;

	return 0;
}