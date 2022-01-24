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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_modulator {scalar_t__ index; int txsubchans; } ;
struct si4713_device {void* rds_enabled; void* stereo; scalar_t__ power_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SI4713_TX_COMPONENT_ENABLE ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_RDS ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC1 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si4713_device* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, const struct v4l2_modulator *vm)
{
	struct si4713_device *sdev = FUNC3(sd);
	int rval = 0;
	u16 stereo, rds;
	u32 p;

	if (!sdev)
		return -ENODEV;

	if (vm->index > 0)
		return -EINVAL;

	/* Set audio mode: mono or stereo */
	if (vm->txsubchans & V4L2_TUNER_SUB_STEREO)
		stereo = 1;
	else if (vm->txsubchans & V4L2_TUNER_SUB_MONO)
		stereo = 0;
	else
		return -EINVAL;

	rds = !!(vm->txsubchans & V4L2_TUNER_SUB_RDS);

	if (sdev->power_state) {
		rval = FUNC1(sdev,
						SI4713_TX_COMPONENT_ENABLE, &p);
		if (rval < 0)
			return rval;

		p = FUNC0(p, stereo, 1, 1 << 1);
		p = FUNC0(p, rds, 2, 1 << 2);

		rval = FUNC2(sdev,
						SI4713_TX_COMPONENT_ENABLE, p);
		if (rval < 0)
			return rval;
	}

	sdev->stereo = stereo;
	sdev->rds_enabled = rds;

	return rval;
}