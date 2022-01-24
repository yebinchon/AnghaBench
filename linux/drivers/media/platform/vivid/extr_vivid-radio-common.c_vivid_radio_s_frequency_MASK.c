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
struct vivid_dev {int dummy; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 int AM_FREQ_RANGE_HIGH ; 
 unsigned int BAND_AM ; 
 unsigned int BAND_FM ; 
 unsigned int BAND_SW ; 
 int EINVAL ; 
 int FM_FREQ_RANGE_LOW ; 
 int SW_FREQ_RANGE_HIGH ; 
 int SW_FREQ_RANGE_LOW ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 struct vivid_dev* FUNC1 (struct file*) ; 
 TYPE_1__* vivid_radio_bands ; 
 int /*<<< orphan*/  FUNC2 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vivid_dev*) ; 

int FUNC4(struct file *file, unsigned *pfreq, const struct v4l2_frequency *vf)
{
	struct vivid_dev *dev = FUNC1(file);
	unsigned freq;
	unsigned band;

	if (vf->tuner != 0)
		return -EINVAL;

	if (vf->frequency >= (FM_FREQ_RANGE_LOW + SW_FREQ_RANGE_HIGH) / 2)
		band = BAND_FM;
	else if (vf->frequency <= (AM_FREQ_RANGE_HIGH + SW_FREQ_RANGE_LOW) / 2)
		band = BAND_AM;
	else
		band = BAND_SW;

	freq = FUNC0(u32, vf->frequency, vivid_radio_bands[band].rangelow,
					   vivid_radio_bands[band].rangehigh);
	*pfreq = freq;

	/*
	 * For both receiver and transmitter recalculate the signal quality
	 * (since that depends on both frequencies) and re-init the rds
	 * generator.
	 */
	FUNC2(dev);
	FUNC3(dev);
	return 0;
}