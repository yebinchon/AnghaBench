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
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {scalar_t__ binner; scalar_t__ pixel_array; scalar_t__ scaler; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  SMIAPP_PAD_SINK ; 
 int /*<<< orphan*/  SMIAPP_PAD_SRC ; 
 int /*<<< orphan*/  SMIAPP_PA_PAD_SRC ; 
 int FUNC0 (struct smiapp_sensor*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 struct smiapp_sensor* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *subdev)
{
	struct smiapp_sensor *sensor = FUNC2(subdev);
	int rval;

	if (sensor->scaler) {
		rval = FUNC0(
			sensor, sensor->binner, sensor->scaler,
			SMIAPP_PAD_SRC, SMIAPP_PAD_SINK,
			MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
		if (rval < 0)
			return rval;
	}

	rval = FUNC0(
		sensor, sensor->pixel_array, sensor->binner,
		SMIAPP_PA_PAD_SRC, SMIAPP_PAD_SINK,
		MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
	if (rval)
		goto out_err;

	return 0;

out_err:
	FUNC1(subdev);

	return rval;
}