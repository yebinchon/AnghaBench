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
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ frequency; } ;
struct si470x_device {size_t band; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ rangelow; scalar_t__ rangehigh; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* bands ; 
 int FUNC0 (struct si470x_device*,int) ; 
 int FUNC1 (struct si470x_device*,scalar_t__) ; 
 struct si470x_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
		const struct v4l2_frequency *freq)
{
	struct si470x_device *radio = FUNC2(file);
	int retval;

	if (freq->tuner != 0)
		return -EINVAL;

	if (freq->frequency < bands[radio->band].rangelow ||
	    freq->frequency > bands[radio->band].rangehigh) {
		/* Switch to band 1 which covers everything we support */
		retval = FUNC0(radio, 1);
		if (retval)
			return retval;
	}
	return FUNC1(radio, freq->frequency);
}