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
struct snd_tea575x {int mute; int val; int freq; int /*<<< orphan*/  cannot_read_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int TEA575X_BIT_BAND_FM ; 
 int TEA575X_BIT_SEARCH_5_28 ; 
 int FUNC0 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_tea575x*,int) ; 

int FUNC3(struct snd_tea575x *tea)
{
	tea->mute = true;

	/* Not all devices can or know how to read the data back.
	   Such devices can set cannot_read_data to true. */
	if (!tea->cannot_read_data) {
		FUNC2(tea, 0x55AA);
		if (FUNC0(tea) != 0x55AA)
			return -ENODEV;
	}

	tea->val = TEA575X_BIT_BAND_FM | TEA575X_BIT_SEARCH_5_28;
	tea->freq = 90500 * 16;		/* 90.5Mhz default */
	FUNC1(tea);

	return 0;
}