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
struct v4l2_frequency_band {int tuner; size_t index; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_frequency_band*) ; 
 int EINVAL ; 
 struct v4l2_frequency_band* bands_adc ; 
 struct v4l2_frequency_band* bands_fm ; 

int FUNC1(struct file *file, void *fh,
		struct v4l2_frequency_band *band)
{
	switch (band->tuner) {
	case 0:
		if (band->index >= FUNC0(bands_adc))
			return -EINVAL;
		*band = bands_adc[band->index];
		return 0;
	case 1:
		if (band->index >= FUNC0(bands_fm))
			return -EINVAL;
		*band = bands_fm[band->index];
		return 0;
	default:
		return -EINVAL;
	}
}