#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct v4l2_hw_freq_seek {scalar_t__ rangelow; scalar_t__ rangehigh; scalar_t__ seek_upward; scalar_t__ wrap_around; scalar_t__ tuner; } ;
struct snd_tea575x {int band; scalar_t__ freq; int val; int /*<<< orphan*/  has_am; scalar_t__ tea5759; scalar_t__ cannot_read_data; } ;
struct file {int f_flags; } ;
struct TYPE_3__ {scalar_t__ rangelow; scalar_t__ rangehigh; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BAND_AM ; 
 int BAND_FM ; 
 int BAND_FM_JAPAN ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOTTY ; 
 int ERESTARTSYS ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int TEA575X_BIT_FREQ_MASK ; 
 int TEA575X_BIT_SEARCH ; 
 int TEA575X_BIT_UPDOWN ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_1__* bands ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (struct snd_tea575x*) ; 
 int FUNC7 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_tea575x*,int) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

int FUNC11(struct file *file, struct snd_tea575x *tea,
				const struct v4l2_hw_freq_seek *a)
{
	unsigned long timeout;
	int i, spacing;

	if (tea->cannot_read_data)
		return -ENOTTY;
	if (a->tuner || a->wrap_around)
		return -EINVAL;

	if (file->f_flags & O_NONBLOCK)
		return -EWOULDBLOCK;

	if (a->rangelow || a->rangehigh) {
		for (i = 0; i < FUNC0(bands); i++) {
			if ((i == BAND_FM && tea->tea5759) ||
			    (i == BAND_FM_JAPAN && !tea->tea5759) ||
			    (i == BAND_AM && !tea->has_am))
				continue;
			if (bands[i].rangelow  == a->rangelow &&
			    bands[i].rangehigh == a->rangehigh)
				break;
		}
		if (i == FUNC0(bands))
			return -EINVAL; /* No matching band found */
		if (i != tea->band) {
			tea->band = i;
			tea->freq = FUNC2(tea->freq, bands[i].rangelow,
						     bands[i].rangehigh);
			FUNC8(tea);
		}
	}

	spacing = (tea->band == BAND_AM) ? 5 : 50; /* kHz */

	/* clear the frequency, HW will fill it in */
	tea->val &= ~TEA575X_BIT_FREQ_MASK;
	tea->val |= TEA575X_BIT_SEARCH;
	if (a->seek_upward)
		tea->val |= TEA575X_BIT_UPDOWN;
	else
		tea->val &= ~TEA575X_BIT_UPDOWN;
	FUNC9(tea, tea->val);
	timeout = jiffies + FUNC3(10000);
	for (;;) {
		if (FUNC10(jiffies, timeout))
			break;
		if (FUNC5(FUNC3(10))) {
			/* some signal arrived, stop search */
			tea->val &= ~TEA575X_BIT_SEARCH;
			FUNC8(tea);
			return -ERESTARTSYS;
		}
		if (!(FUNC7(tea) & TEA575X_BIT_SEARCH)) {
			u32 freq;

			/* Found a frequency, wait until it can be read */
			for (i = 0; i < 100; i++) {
				FUNC4(10);
				freq = FUNC6(tea);
				if (freq) /* available */
					break;
			}
			if (freq == 0) /* shouldn't happen */
				break;
			/*
			 * if we moved by less than the spacing, or in the
			 * wrong direction, continue seeking
			 */
			if (FUNC1(tea->freq - freq) < 16 * spacing ||
					(a->seek_upward && freq < tea->freq) ||
					(!a->seek_upward && freq > tea->freq)) {
				FUNC9(tea, tea->val);
				continue;
			}
			tea->freq = freq;
			tea->val &= ~TEA575X_BIT_SEARCH;
			return 0;
		}
	}
	tea->val &= ~TEA575X_BIT_SEARCH;
	FUNC8(tea);
	return -ENODATA;
}