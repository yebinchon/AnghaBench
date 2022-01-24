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
struct meye_params {int subsample; int quality; int sharpness; int agc; int picture; int framerate; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct meye_params params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SONY_PIC_COMMAND_SETCAMERAAGC ; 
 int /*<<< orphan*/  SONY_PIC_COMMAND_SETCAMERAPICTURE ; 
 int /*<<< orphan*/  SONY_PIC_COMMAND_SETCAMERASHARPNESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ meye ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct meye_params *jp)
{
	if (jp->subsample > 1)
		return -EINVAL;

	if (jp->quality > 10)
		return -EINVAL;

	if (jp->sharpness > 63 || jp->agc > 63 || jp->picture > 63)
		return -EINVAL;

	if (jp->framerate > 31)
		return -EINVAL;

	FUNC1(&meye.lock);

	if (meye.params.subsample != jp->subsample ||
	    meye.params.quality != jp->quality)
		FUNC0();	/* need restart */

	meye.params = *jp;
	FUNC3(SONY_PIC_COMMAND_SETCAMERASHARPNESS,
			      meye.params.sharpness);
	FUNC3(SONY_PIC_COMMAND_SETCAMERAAGC,
			      meye.params.agc);
	FUNC3(SONY_PIC_COMMAND_SETCAMERAPICTURE,
			      meye.params.picture);
	FUNC2(&meye.lock);

	return 0;
}