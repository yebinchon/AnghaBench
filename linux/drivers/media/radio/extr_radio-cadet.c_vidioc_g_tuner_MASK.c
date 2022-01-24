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
struct v4l2_tuner {int capability; int rangelow; int rangehigh; int /*<<< orphan*/  signal; int /*<<< orphan*/  audmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ index; } ;
struct file {int dummy; } ;
struct cadet {int /*<<< orphan*/  sigstrength; scalar_t__ io; scalar_t__ is_fm_band; } ;
struct TYPE_2__ {int capability; int rangelow; int rangehigh; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_RDS ; 
 TYPE_1__* bands ; 
 int /*<<< orphan*/  FUNC0 (struct cadet*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct cadet* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				struct v4l2_tuner *v)
{
	struct cadet *dev = FUNC5(file);

	if (v->index)
		return -EINVAL;
	v->type = V4L2_TUNER_RADIO;
	FUNC4(v->name, "Radio", sizeof(v->name));
	v->capability = bands[0].capability | bands[1].capability;
	v->rangelow = bands[0].rangelow;	   /* 520 kHz (start of AM band) */
	v->rangehigh = bands[1].rangehigh;    /* 108.0 MHz (end of FM band) */
	if (dev->is_fm_band) {
		v->rxsubchans = FUNC0(dev);
		FUNC3(3, dev->io);
		FUNC3(FUNC1(dev->io + 1) & 0x7f, dev->io + 1);
		FUNC2(100);
		FUNC3(3, dev->io);
		if (FUNC1(dev->io + 1) & 0x80)
			v->rxsubchans |= V4L2_TUNER_SUB_RDS;
	} else {
		v->rangelow = 8320;      /* 520 kHz */
		v->rangehigh = 26400;    /* 1650 kHz */
		v->rxsubchans = V4L2_TUNER_SUB_MONO;
	}
	v->audmode = V4L2_TUNER_MODE_STEREO;
	v->signal = dev->sigstrength; /* We might need to modify scaling of this */
	return 0;
}